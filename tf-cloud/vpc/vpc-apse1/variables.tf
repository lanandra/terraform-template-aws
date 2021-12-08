# Setup AWS Region
variable "aws_region" {
  type        = string
  description = "AWS Region"
  default     = "ap-southeast-1"
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
