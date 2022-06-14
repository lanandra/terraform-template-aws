# Create S3 bucket
resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name

  tags = var.bucket_tags
}

# Public access configuration for S3 bucket
resource "aws_s3_bucket_public_access_block" "bucket_access" {
  bucket = aws_s3_bucket.bucket.id

  block_public_acls       = var.block_public_acls
  block_public_policy     = var.block_public_policy
  ignore_public_acls      = var.ignore_public_acls
  restrict_public_buckets = var.restrict_public_buckets
}

# Configuration for S3 static website hosting
resource "aws_s3_bucket_website_configuration" "bucket_website_configuration" {
  bucket = aws_s3_bucket.bucket.bucket

  redirect_all_requests_to {
    host_name = var.redirect_host_name
    protocol  = var.redirect_protocol
  }
}
