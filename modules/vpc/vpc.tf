# Configuration section for vpc
resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr

  tags = merge(
    { "Name" = var.environment_name },
    var.additional_tags
  )
}

# Configuration section for internet gateway
resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = aws_vpc.vpc.id

  tags = merge(
    { "Name" = var.environment_name },
    var.additional_tags
  )
}

# Configuration section for Elastic IP used by NAT Gateway
# Please note that by default each region can only have 5 public IP (https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html)
# Please increase quota of Elastic IP if you need more (https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-resource-limits.html)
resource "aws_eip" "nat_eip_a" {
  vpc = true

  tags = merge(
    {
      "Name" = format(
        "nat-${var.environment_name}-a",
      )
    },
    var.additional_tags
  )
}

resource "aws_eip" "nat_eip_b" {
  vpc = true

  tags = merge(
    {
      "Name" = format(
        "nat-${var.environment_name}-b",
      )
    },
    var.additional_tags
  )
}

resource "aws_eip" "nat_eip_c" {
  vpc = true

  tags = merge(
    {
      "Name" = format(
        "nat-${var.environment_name}-c",
      )
    },
    var.additional_tags
  )
}

# Configuration section for NAT Gateway
# Subnet used by NAT Gateway is the first index public subnet in each AZ
resource "aws_nat_gateway" "nat_gateway_a" {
  allocation_id = aws_eip.nat_eip_a.id
  subnet_id     = aws_subnet.public_subnet_az_a[0].id

  tags = merge(
    {
      "Name" = format(
        "nat-${var.environment_name}-a",
      )
    },
    var.additional_tags
  )

  depends_on = [aws_internet_gateway.internet_gateway]
}

resource "aws_nat_gateway" "nat_gateway_b" {
  allocation_id = aws_eip.nat_eip_b.id
  subnet_id     = aws_subnet.public_subnet_az_b[0].id

  tags = merge(
    {
      "Name" = format(
        "nat-${var.environment_name}-b",
      )
    },
    var.additional_tags
  )

  depends_on = [aws_internet_gateway.internet_gateway]
}

resource "aws_nat_gateway" "nat_gateway_c" {
  allocation_id = aws_eip.nat_eip_c.id
  subnet_id     = aws_subnet.public_subnet_az_c[0].id

  tags = merge(
    {
      "Name" = format(
        "nat-${var.environment_name}-c",
      )
    },
    var.additional_tags
  )

  depends_on = [aws_internet_gateway.internet_gateway]
}
