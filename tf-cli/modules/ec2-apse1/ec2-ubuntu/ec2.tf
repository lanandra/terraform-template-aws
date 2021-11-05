# Reference for EC2 user-data
data "template_file" "user_data" {
  template = file("${path.module}/user-data.sh")
}

# Setup EC2 instance using ubuntu AMI
resource "aws_instance" "ec2_ubuntu" {
  ami                  = data.aws_ami.ubuntu.id
  instance_type        = var.ec2_instance_type
  key_name             = var.ec2_keypair
  iam_instance_profile = var.ec2_instace_profile
  user_data            = data.template_file.user_data.rendered
  tags                 = var.ec2_tags

  root_block_device {
    volume_size = var.ec2_volume_size
  }
}
