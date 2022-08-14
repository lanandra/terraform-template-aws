# Setup terraform cloud and workspace
terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "your-organization"

    workspaces {
      name = "your-workspace"
    }
  }
}

# Setup terraform providers
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.24.0"
    }
  }

  required_version = ">= 1.2.4"
}

# Setup AWS provider
provider "aws" {
  region = var.aws_region
}
