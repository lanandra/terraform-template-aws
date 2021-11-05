# Setup terraform providers
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.57.0"
    }
  }

  required_version = ">= 1.0.6"
}

# Setup AWS provider
provider "aws" {
  region = var.aws_region
  shared_credentials_file = var.aws_credential_file
  profile                 = var.aws_credential_profile
}
