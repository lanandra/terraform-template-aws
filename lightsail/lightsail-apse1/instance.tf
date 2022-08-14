# Create lightsail instance from module
module "wordpress_sandbox" {
  source = "../../modules/lightsail/wordpress/"

  instance_name     = "your-wordpress"
  availability_zone = var.availability_zone[0]

  instance_tags = {
    Name        = "your-wordpress"
    Environment = "your-environment"
    Owner       = "your-owner"
  }
}

resource "aws_lightsail_static_ip" "wordpress_sandbox_ip" {
  name = "your-wordpress-ip"
}

resource "aws_lightsail_static_ip_attachment" "wordpress_sandbox" {
  static_ip_name = aws_lightsail_static_ip.wordpress_sandbox_ip.id
  instance_name  = "your-wordpress"
}
