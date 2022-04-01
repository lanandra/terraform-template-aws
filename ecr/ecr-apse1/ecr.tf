# Create ECR Repository
resource "aws_ecr_repository" "lanandra_ip_reader" {
  name                 = "your-repository-name"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}
