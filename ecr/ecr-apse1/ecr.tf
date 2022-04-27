# Create ECR Repository
resource "aws_ecr_repository" "lanandra_ip_reader" {
  name                 = "your-repository-name"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_lifecycle_policy" "lanandra_ip_reader" {
  repository = aws_ecr_repository.lanandra_ip_reader.name

  policy = file("./json-policies/expire-untagged.json")
}
