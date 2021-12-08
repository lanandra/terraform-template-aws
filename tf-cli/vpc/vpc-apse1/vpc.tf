# Configuration section for vpc
resource "aws_vpc" "apse1_0" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "apse1-0"
  }
}

# Configuration section for internet gateway
resource "aws_internet_gateway" "apse1_0" {
  vpc_id = aws_vpc.apse1_0.id

  tags = {
    Name = "apse1-0"
  }
}

# Configuration section for subnet
resource "aws_subnet" "public_apse1_0" {
  cidr_block        = "10.0.0.0/22"
  vpc_id            = aws_vpc.apse1_0.id
  availability_zone = var.az_apse_1a

  tags = {
    Name = "public-apse1-0"
  }
}

# Configuration section for route table
resource "aws_route_table" "public_apse1_0" {
  vpc_id = aws_vpc.apse1_0.id

  tags = {
    Name = "public-apse1-0"
  }
}

resource "aws_route" "default_public_apse1_0" {
  route_table_id         = aws_route_table.public_apse1_0.id
  destination_cidr_block = var.default_route
  gateway_id             = aws_internet_gateway.apse1_0.id
}

resource "aws_route_table_association" "public_apse1_0" {
  subnet_id      = aws_subnet.public_apse1_0.id
  route_table_id = aws_route_table.public_apse1_0.id
}
