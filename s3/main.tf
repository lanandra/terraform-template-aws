/*
Template configuration for provision Amazon S3 bucket with lifecycle rule
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

# S3 bucket configurations
resource "aws_s3_bucket" "your-s3-bucket" {
  bucket = "your-s3-bucket"
  acl    = var.s3_acl

  tags = {
    Name = "your-s3-bucket"
  }

  # Enable bucket versioning
  versioning {
    enabled = var.s3_versioning
  }

  # Enable S3 encryption
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = var.s3_encryption
      }
    }
  }

  # Enable lifecycle rule
  lifecycle_rule {
    id      = var.s3_lifecycle_rule_id
    prefix  = var.s3_lifecycle_rule_prefix
    enabled = var.s3_lifecycle_rule

    noncurrent_version_expiration {
      days = var.s3_noncurrent_version_expiration
    }
  }
}

# S3 bucket public access configuration
resource "aws_s3_bucket_public_access_block" "your-s3-bucket" {
  bucket = aws_s3_bucket.your-s3-bucket.id

  block_public_acls         = var.s3_block_public_acl
  block_public_policy       = var.s3_block_public_policy
  ignore_public_acls        = var.s3_ignore_public_acl
  restrict_public_buckets   = var.s3_restrict_public_buckets
}
