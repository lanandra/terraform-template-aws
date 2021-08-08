/*
Template configuration for provision Amazon EC2 with latest ubuntu 20.04 AMI
AMI ID is imported from default aws SSM parameter store
Credential is using shared credential file as reference
Keypair is using existing Keypair
Variables are referenced from variables.tf file
Outputs are referenced from outputs.tf file
*/

# Setup terraform provider(s) and version
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.49" # Please change version that will be used here
    }
    template = {
      source = "hashicorp/template"
      version = "~> 2.2" # Please change version that will be used here
    }
  }
}

# Setup aws region and credentials
provider "aws" {
  region                  = "ap-southeast-1"
  shared_credentials_file = var.aws_credential_file
  profile                 = var.aws_credential_profile
}

# Get latest public ubuntu AMI ID from Parameter Store in chosen region
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

# Reference for EC2 user-data
data "template_file" "user-data" {
  template = "${file("./user-data.sh")}"
}

# Setup EC2 instance using ubuntu AMI
resource "aws_instance" "your_ec2_instance_name" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = var.ec2_instance_type
  associate_public_ip_address = true
  key_name                    = "your_key_pair_name"
  user_data                   = data.template_file.user-data.rendered

  root_block_device {
    volume_size = var.ec2_volume_size
  }

  tags = {
    Name = "your_tag" # Please change name tag here
  }
}
