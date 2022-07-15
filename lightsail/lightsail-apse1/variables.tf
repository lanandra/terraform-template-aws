variable "aws_region" {
  type        = string
  description = "AWS Region"
  default     = "ap-southeast-1"
}

variable "availability_zone" {
  type        = list(string)
  description = "Availability Zone"
  default     = ["ap-southeast-1a", "ap-southeast-1b", "ap-southeast-1c"]
}
