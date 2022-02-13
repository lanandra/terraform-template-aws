# Configuration section for private subnet
resource "aws_subnet" "private_subnet_az_a" {
  count = length(var.private_subnet_cidr_az_a)

  cidr_block        = element(var.private_subnet_cidr_az_a, count.index)
  vpc_id            = aws_vpc.vpc.id
  availability_zone = var.availability_zone[0]

  tags = merge(
    {
      "Name" = format(
        "${var.environment_name}-${var.private_subnet_interfix}-a-${count.index}",
      )
    },
    var.additional_tags
  )
}

resource "aws_subnet" "private_subnet_az_b" {
  count = length(var.private_subnet_cidr_az_b)

  cidr_block        = element(var.private_subnet_cidr_az_b, count.index)
  vpc_id            = aws_vpc.vpc.id
  availability_zone = var.availability_zone[1]

  tags = merge(
    {
      "Name" = format(
        "${var.environment_name}-${var.private_subnet_interfix}-b-${count.index}",
      )
    },
    var.additional_tags
  )
}

resource "aws_subnet" "private_subnet_az_c" {
  count = length(var.private_subnet_cidr_az_c)

  cidr_block        = element(var.private_subnet_cidr_az_c, count.index)
  vpc_id            = aws_vpc.vpc.id
  availability_zone = var.availability_zone[2]

  tags = merge(
    {
      "Name" = format(
        "${var.environment_name}-${var.private_subnet_interfix}-c-${count.index}",
      )
    },
    var.additional_tags
  )
}

# Configuration section for route table private subnet
resource "aws_route_table" "private_subnet_az_a" {
  count = length(var.private_subnet_cidr_az_a)

  vpc_id = aws_vpc.vpc.id

  tags = merge(
    {
      "Name" = format(
        "${var.environment_name}-${var.private_subnet_interfix}-a-${count.index}",
      )
    },
    var.additional_tags
  )
}

resource "aws_route_table" "private_subnet_az_b" {
  count = length(var.private_subnet_cidr_az_b)

  vpc_id = aws_vpc.vpc.id

  tags = merge(
    {
      "Name" = format(
        "${var.environment_name}-${var.private_subnet_interfix}-b-${count.index}",
      )
    },
    var.additional_tags
  )
}

resource "aws_route_table" "private_subnet_az_c" {
  count = length(var.private_subnet_cidr_az_c)

  vpc_id = aws_vpc.vpc.id

  tags = merge(
    {
      "Name" = format(
        "${var.environment_name}-${var.private_subnet_interfix}-c-${count.index}",
      )
    },
    var.additional_tags
  )
}

# Configuration section for default route to internet from private subnet AZ a
resource "aws_route" "default_route_private_subnet_a" {
  route_table_id         = aws_route_table.private_subnet_az_a[0].id
  destination_cidr_block = var.default_route
  nat_gateway_id         = aws_nat_gateway.nat_gateway_a.id
}

# Configuration section for route table association on private route table AZ a
resource "aws_route_table_association" "private_subnet_az_a" {
  count = length(var.private_subnet_cidr_az_a)

  subnet_id      = element(aws_subnet.private_subnet_az_a[*].id, count.index)
  route_table_id = aws_route_table.private_subnet_az_a[0].id
}

# Configuration section for default route to internet from private subnet AZ b
resource "aws_route" "default_route_private_subnet_b" {
  route_table_id         = aws_route_table.private_subnet_az_b[0].id
  destination_cidr_block = var.default_route
  nat_gateway_id         = aws_nat_gateway.nat_gateway_b.id
}

# Configuration section for route table association on private route table AZ b
resource "aws_route_table_association" "private_subnet_az_b" {
  count = length(var.private_subnet_cidr_az_b)

  subnet_id      = element(aws_subnet.private_subnet_az_b[*].id, count.index)
  route_table_id = aws_route_table.private_subnet_az_b[0].id
}

# Configuration section for default route to internet from private subnet AZ c
resource "aws_route" "default_route_private_subnet_c" {
  route_table_id         = aws_route_table.private_subnet_az_c[0].id
  destination_cidr_block = var.default_route
  nat_gateway_id         = aws_nat_gateway.nat_gateway_c.id
}

# Configuration section for route table association on private route table AZ c
resource "aws_route_table_association" "private_subnet_az_c" {
  count = length(var.private_subnet_cidr_az_c)

  subnet_id      = element(aws_subnet.private_subnet_az_c[*].id, count.index)
  route_table_id = aws_route_table.private_subnet_az_c[0].id
}
