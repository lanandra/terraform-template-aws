# Create App Runner service with ECR as source reference
resource "aws_apprunner_service" "app_runner" {
  service_name = var.service_name
  tags         = var.service_tags

  source_configuration {
    authentication_configuration {
      access_role_arn = var.ecr_access_role_arn
    }
    auto_deployments_enabled = var.auto_deployment
    image_repository {
      image_configuration {
        port = var.container_port
      }
      image_identifier      = var.container_image
      image_repository_type = var.ecr_repository_type
    }
  }

  instance_configuration {
    cpu    = var.cpu
    memory = var.memory
  }

  # Condition check if outgoing network traffic is public only
  dynamic "network_configuration" {
    for_each = var.outgoing_network_traffic == "public" ? [1] : []

    content {
      egress_configuration {
        egress_type = "DEFAULT"
      }
    }
  }

  # Condition check if outgoing network traffic is public+private via VPC
  dynamic "network_configuration" {
    for_each = var.outgoing_network_traffic == "vpc" ? [1] : []

    content {
      egress_configuration {
        egress_type       = "VPC"
        vpc_connector_arn = var.vpc_connector_arn
      }
    }
  }
}
