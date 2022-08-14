# Create s3 bucket from module
module "your_domain" {
  source = "../../modules/s3/static-website-hosting/"

  bucket_name        = "yourdomain.com"
  redirect_host_name = "yourredirecturl.com/path"

  bucket_tags = {
    Name        = "yourdomain.com"
    Environment = "Your Environment"
    Owner       = "Owner"
  }
}