# Set outputs
output "your_domain_bucket_website_endpoint" {
  value = module.your_domain.bucket_website_endpoint
}

output "your_domain_bucket_hosted_zone_id" {
  value = module.your_domain.bucket_hosted_zone_id
}
