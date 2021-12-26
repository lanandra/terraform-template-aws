# Setup AWS Region
variable "aws_region" {
  type        = string
  description = "AWS Region"
  default     = "ap-southeast-1"
}

# Setup Availability Zone
variable "availability_zone" {
  type        = list(string)
  description = "Availability Zone used by subnet"
  default     = ["ap-southeast-1a", "ap-southeast-1b", "ap-southeast-1c"]
}

# Setup Default Route
variable "default_route" {
  type        = string
  description = "Default Route from and to internet"
  default     = "0.0.0.0/0"
}
