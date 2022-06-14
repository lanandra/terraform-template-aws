# Set outputs
output "bucket_website_endpoint" {
  value = aws_s3_bucket_website_configuration.bucket_website_configuration.website_endpoint
}

output "bucket_hosted_zone_id" {
  value = aws_s3_bucket.bucket.hosted_zone_id
}
