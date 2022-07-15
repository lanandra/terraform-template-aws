# Create lighstail instance with wordpress blueprint
resource "aws_lightsail_instance" "instance" {
  name              = var.instance_name
  availability_zone = var.availability_zone
  blueprint_id      = var.wp_blueprint_id
  bundle_id         = var.bundle_id
  key_pair_name     = var.lightsail_key_pair
  tags              = var.instance_tags
}
