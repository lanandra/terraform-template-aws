# Setup AWS Region
variable "aws_region" {
  type        = string
  description = "AWS Region"
  default     = "ap-southeast-1"
}

# Define path to aws credentials file
variable "aws_credential_file" {
  type        = string
  description = "Path to aws credentials file"
  default     = "~/.aws/credentials"
}

# Define aws profile
variable "aws_credential_profile" {
  type        = string
  description = "AWS profile used for provision services"
  default     = "your-profile-name"
}
