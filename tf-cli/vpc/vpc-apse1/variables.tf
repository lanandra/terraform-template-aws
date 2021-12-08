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

# Setup Availability Zone
variable "az_apse_1a" {
  type        = string
  description = "Availability Zone used by subnet"
  default     = "ap-southeast-1a"
}

# Setup Default Route
variable "default_route" {
  type        = string
  description = "Default Route from and to internet"
  default     = "0.0.0.0/0"
}
