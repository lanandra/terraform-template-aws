variable "aws_region" {
  type        = string
  description = "AWS Region"
  default     = "us-east-1"
}

variable "ecr_repository_type" {
  type        = list(string)
  description = "Whether ECR repository is private or public"
  default     = ["ECR", "ECR_PUBLIC"]
}
