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
