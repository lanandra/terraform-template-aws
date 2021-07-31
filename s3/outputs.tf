# Generate output of S3 bucket name
output "s3_bucket_name" {
  value       = aws_s3_bucket.your-s3-bucket.id
  description = "S3 bucket name"
}
