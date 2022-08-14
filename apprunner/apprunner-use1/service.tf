# Create App Runner service from module
module "your_service" {
  source = "../../modules/apprunner/ecr/"

  service_name             = "your-service"
  container_image          = "your-ecr-container-image-uri"
  container_port           = "your-application-port"
  ecr_repository_type      = var.ecr_repository_type[0]
  cpu                      = 1024
  memory                   = 2048
  outgoing_network_traffic = "public"

  service_tags = {
    Name        = "your-service"
    Environment = "your-environment"
    Owner       = "your-owner"
  }
}

resource "aws_apprunner_custom_domain_association" "your_service" {
  domain_name = "your-domain-name"
  service_arn = module.your_service.service_arn
}
