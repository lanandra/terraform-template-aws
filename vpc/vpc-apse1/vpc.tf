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


# Configuration section for elastic ip
resource "aws_eip" "nat_apse1_0" {
  vpc = true

  tags = {
    Name = "nat-apse1-0"
  }
}

resource "aws_eip" "nat_apse1_1" {
  vpc = true

  tags = {
    Name = "nat-apse1-1"
  }
}

resource "aws_eip" "nat_apse1_2" {
  vpc = true

  tags = {
    Name = "nat-apse1-2"
  }
}

# Configuration section for nat gateway
resource "aws_nat_gateway" "apse1_0" {
  allocation_id = aws_eip.nat_apse1_0.id
  subnet_id     = aws_subnet.public_apse1_0.id

  tags = {
    Name = "apse1-0"
  }
}

resource "aws_nat_gateway" "apse1_1" {
  allocation_id = aws_eip.nat_apse1_1.id
  subnet_id     = aws_subnet.public_apse1_1.id

  tags = {
    Name = "apse1-1"
  }
}

resource "aws_nat_gateway" "apse1_2" {
  allocation_id = aws_eip.nat_apse1_2.id
  subnet_id     = aws_subnet.public_apse1_2.id

  tags = {
    Name = "apse1-2"
  }
}
