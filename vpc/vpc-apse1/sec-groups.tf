# Configuration related to security groups
resource "aws_security_group" "demo_staging_public" {
  name        = "demo-staging-public"
  description = "Security Group for demo purposes"
  vpc_id      = module.vpc_staging.vpc_id

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
    Name = "demo-staging-public"
  }
}

# Change source CIDR blocks based on your environment needs
resource "aws_security_group" "demo_staging_private" {
  name        = "demo-staging-private"
  description = "Security Group for demo purposes"
  vpc_id      = module.vpc_staging.vpc_id

  ingress {
    description = "from staging-public"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["10.1.0.0/20"]
  }

  ingress {
    description = "from staging-public"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["10.1.0.0/20"]
  }

  ingress {
    description = "from staging-public"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["10.1.0.0/20"]
  }

  ingress {
    description = "from staging-public"
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["10.1.0.0/20"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.default_route]
  }

  tags = {
    Name = "demo-staging-private"
  }
}

resource "aws_security_group" "demo_production_public" {
  name        = "demo-production-public"
  description = "Security Group for demo purposes"
  vpc_id      = module.vpc_production.vpc_id

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
    Name = "demo-production-public"
  }
}

# Change source CIDR blocks based on your environment needs
resource "aws_security_group" "demo_production_private" {
  name        = "demo-production-private"
  description = "Security Group for demo purposes"
  vpc_id      = module.vpc_production.vpc_id

  ingress {
    description = "from production-public"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["10.2.0.0/20"]
  }

  ingress {
    description = "from production-public"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["10.2.0.0/20"]
  }

  ingress {
    description = "from production-public"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["10.2.0.0/20"]
  }

  ingress {
    description = "from production-public"
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["10.2.0.0/20"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.default_route]
  }

  tags = {
    Name = "demo-production-private"
  }
}
