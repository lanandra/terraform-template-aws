/*
Template configuration for provision Amazon EC2 with latest ubuntu 20.04 AMI
AMI ID is imported from default aws SSM parameter store
Credential is using shared credential file as reference
Keypair is using existing Keypair
EC2 will be provided with IAM Instance Profile/IAM Role with reference from module
EC2 will run startup script/user data that rendered from user-data.sh
Variables are referenced from variables.tf file
Outputs are referenced from outputs.tf file
*/

# Setup terraform provider(s) and version
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.53.0" # Please change version that will be used here
    }
    template = {
      source = "hashicorp/template"
      version = "2.2.0" # Please change version that will be used here
    }
  }
}

# Setup aws region and credentials
provider "aws" {
  region                  = "ap-southeast-1"
  shared_credentials_file = var.aws_credential_file
  profile                 = var.aws_credential_profile
}

# Reference for EC2 user-data
data "template_file" "user-data" {
  template = "${file("./user-data.sh")}" # Change whether to use ubuntu or amazon-linux-2
}

# Reference module for IAM instance profile
module "instance_profile" {
  source = "../modules/iam/"
}

# Setup EC2 instance using ubuntu AMI
resource "aws_instance" "your_ec2_instance_name" {
  ami                         = data.aws_ami.ubuntu.id # Change whether to use ubuntu or amazon-linux-2
  instance_type               = var.ec2_instance_type
  associate_public_ip_address = true
  key_name                    = "your_key_pair_name"
  user_data                   = data.template_file.user-data.rendered
  iam_instance_profile        = module.instance_profile.iam-instance-profile-name

  root_block_device {
    volume_size = var.ec2_volume_size
  }

  tags = {
    Name = "your_tag" # Please change name tag here
  }

  depends_on = [
    module.instance_profile.iam-instance-profile-name
  ]
}
