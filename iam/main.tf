/*
Template configuration for provision Amazon IAM Role
Role act as assume role for EC2 service
Current policies set to list of AWS managed polices that include EC2 full access and S3 full access
Please change policy as you wish. Due to demo/template purpose, policies not granted with least privileged
Credential is using shared credential file as reference
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
  }
}

# Setup aws region and credentials
provider "aws" {
  region                  = "ap-southeast-1"
  shared_credentials_file = var.aws_credential_file
  profile                 = var.aws_credential_profile
}
