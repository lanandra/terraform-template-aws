variable "project_name" {
  type        = string
  description = "CodeBuild project name"
  default     = ""
}

variable "project_tags" {
  type        = map(string)
  description = "Set key value tags for CodeBuild project"
  default     = {}
}

variable "github_repository_url" {
  type        = string
  description = "URL of GitHub repository"
  default     = ""
}

variable "source_version" {
  type        = string
  description = "Enter a pull request, branch, commit ID, tag, or reference and a commit ID"
  default     = ""
}

variable "build_image" {
  type        = string
  description = "Container image used by build project"
  default     = ""
}

variable "environment_type" {
  type        = string
  description = "Build environment type"
  default     = "LINUX_CONTAINER"
}

variable "compute_type" {
  type        = string
  description = "Compute resource type used by build project"
  default     = "BUILD_GENERAL1_SMALL"
}

variable "priveleged" {
  type        = bool
  description = "Set to true if need to run docker daemon inside docker container"
  default     = true
}

variable "dockerhub_username_value" {
  type        = string
  description = "Value of environment variable DOCKERHUB_USERNAME"
}

variable "dockerhub_password_value" {
  type        = string
  description = "Value of environment variable DOCKERHUB_PASSWORD"
}

variable "aws_default_region_value" {
  type        = string
  description = "Value of environment variable AWS_DEFAULT_REGION"
}

variable "aws_account_id_value" {
  type        = string
  description = "Value of environment variable AWS_ACCOUNT_ID"
}

variable "image_tag_version_value" {
  type        = string
  description = "Value of environment variable IMAGE_TAG_VERSION"
}

variable "image_repo_name_value" {
  type        = string
  description = "Value of environment variable IMAGE_REPO_NAME"
}

variable "codebuild_service_role_arn" {
  type        = string
  description = "ARN of CodeBuild service role"
  default     = "arn:aws:iam::12digitsawsid:role/service-role/your-codebuild-service-role"
}

variable "artifact_type" {
  type        = string
  description = "Type of artifact"
  default     = "NO_ARTIFACTS"
}
