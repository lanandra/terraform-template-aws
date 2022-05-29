# Setup AWS Region
variable "aws_region" {
  type        = string
  description = "AWS Region"
  default     = "ap-southeast-1"
}

variable "default_deletion_days" {
  type        = string
  description = "Default pending deletion days"
  default     = "7"
}
