# Configuration section for private subnet
resource "aws_subnet" "private_apse1_0" {
  cidr_block        = cidrsubnet("10.0.0.0/16", 6, 3)
  vpc_id            = aws_vpc.apse1_0.id
  availability_zone = var.availability_zone[0]

  tags = {
    Name = "private-apse1-0"
  }
}

resource "aws_subnet" "private_apse1_1" {
  cidr_block        = cidrsubnet("10.0.0.0/16", 6, 4)
  vpc_id            = aws_vpc.apse1_0.id
  availability_zone = var.availability_zone[1]

  tags = {
    Name = "private-apse1-1"
  }
}

resource "aws_subnet" "private_apse1_2" {
  cidr_block        = cidrsubnet("10.0.0.0/16", 6, 5)
  vpc_id            = aws_vpc.apse1_0.id
  availability_zone = var.availability_zone[2]

  tags = {
    Name = "private-apse1-2"
  }
}

# Configuration section for route table private_apse1_0
resource "aws_route_table" "private_apse1_0" {
  vpc_id = aws_vpc.apse1_0.id

  tags = {
    Name = "private-apse1-0"
  }
}

# Route to internet from private_apse1_0 via nat gateway
resource "aws_route" "default_private_apse1_0" {
  route_table_id         = aws_route_table.private_apse1_0.id
  destination_cidr_block = var.default_route
  nat_gateway_id         = aws_nat_gateway.apse1_0.id
}

resource "aws_route_table_association" "private_apse1_0" {
  subnet_id      = aws_subnet.private_apse1_0.id
  route_table_id = aws_route_table.private_apse1_0.id
}

# Configuration section for route table private_apse1_1
resource "aws_route_table" "private_apse1_1" {
  vpc_id = aws_vpc.apse1_0.id

  tags = {
    Name = "private-apse1-1"
  }
}

# Route to internet from private_apse1_1 via nat gateway
resource "aws_route" "default_private_apse1_1" {
  route_table_id         = aws_route_table.private_apse1_1.id
  destination_cidr_block = var.default_route
  nat_gateway_id         = aws_nat_gateway.apse1_1.id
}

resource "aws_route_table_association" "private_apse1_1" {
  subnet_id      = aws_subnet.private_apse1_1.id
  route_table_id = aws_route_table.private_apse1_1.id
}

# Configuration section for route table private_apse1_2
resource "aws_route_table" "private_apse1_2" {
  vpc_id = aws_vpc.apse1_0.id

  tags = {
    Name = "private-apse1-2"
  }
}

# Route to internet from private_apse1_2 via nat gateway
resource "aws_route" "default_private_apse1_2" {
  route_table_id         = aws_route_table.private_apse1_2.id
  destination_cidr_block = var.default_route
  nat_gateway_id         = aws_nat_gateway.apse1_2.id
}

resource "aws_route_table_association" "private_apse1_2" {
  subnet_id      = aws_subnet.private_apse1_2.id
  route_table_id = aws_route_table.private_apse1_2.id
}
