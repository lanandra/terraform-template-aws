# Create A record with alias to S3 website endpoint
resource "aws_route53_record" "yourdomain_com" {
  zone_id = var.your_domain_zone_id
  name    = "yourdomain.com"
  type    = "A"

  alias {
    name                   = data.terraform_remote_state.your_s3_workspace.outputs.your_domain_bucket_website_endpoint
    zone_id                = data.terraform_remote_state.your_s3_workspace.outputs.your_domain_bucket_hosted_zone_id
    evaluate_target_health = true
  }
}
