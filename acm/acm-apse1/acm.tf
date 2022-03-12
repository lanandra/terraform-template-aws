resource "aws_acm_certificate" "wildcard" {
  domain_name       = "*.yourdomain.com"
  validation_method = "DNS"

  tags = {
    Name        = "Your Wildcard "
    Environment = "Your Environment"
    Owner       = "Your Owner"
  }

  lifecycle {
    create_before_destroy = true
  }
}
