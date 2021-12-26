# Configuration related to security groups

resource "aws_security_group" "demo_public_apse1_0" {
  name        = "demo-public-apse1-0"
  description = "Security Group for demo purposes"
  vpc_id      = aws_vpc.apse1_0.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.default_route]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [var.default_route]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [var.default_route]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.default_route]
  }

  tags = {
    Name = "demo-public-apse1-0"
  }
}

resource "aws_security_group" "demo_private_apse1_0" {
  name        = "demo-private-apse1-0"
  description = "Security Group for demo purposes"
  vpc_id      = aws_vpc.apse1_0.id

  ingress {
    description = "from public apse1"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/20"]
  }

  ingress {
    description = "from public apse1"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/20"]
  }

  ingress {
    description = "from public apse1"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/20"]
  }

  ingress {
    description = "from public apse1"
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/20"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.default_route]
  }

  tags = {
    Name = "demo-private-apse1-0"
  }
}
