# Set variables
variable "environment_name" {
  type        = string
  description = "Set environment name"
  default     = ""
}

variable "vpc_cidr" {
  type        = string
  description = "VPC CIDR"
  default     = ""
}

variable "availability_zone" {
  type        = list(string)
  description = "Availability Zone"
  default     = ["ap-southeast-1a", "ap-southeast-1b", "ap-southeast-1c"]
}

variable "public_subnet_cidr_az_a" {
  type        = list(string)
  description = "Public subnet CIDR within AZ-a"
  default     = []
}

variable "public_subnet_cidr_az_b" {
  type        = list(string)
  description = "Public subnet CIDR within AZ-b"
  default     = []
}

variable "public_subnet_cidr_az_c" {
  type        = list(string)
  description = "Public subnet CIDR within AZ-c"
  default     = []
}

variable "public_subnet_interfix" {
  type        = string
  description = "Give interfix to public subnet name"
  default     = "public"
}

variable "private_subnet_cidr_az_a" {
  type        = list(string)
  description = "Private subnet CIDR within AZ-a"
  default     = []
}

variable "private_subnet_cidr_az_b" {
  type        = list(string)
  description = "Private subnet CIDR within AZ-b"
  default     = []
}

variable "private_subnet_cidr_az_c" {
  type        = list(string)
  description = "Private subnet CIDR within AZ-c"
  default     = []
}

variable "private_subnet_interfix" {
  type        = string
  description = "Give interfix to private subnet name"
  default     = "private"
}

variable "additional_tags" {
  type        = map(string)
  description = "Variable if additional tags is needed"
  default     = {}
}

variable "default_route" {
  type        = string
  description = "Default Route from and to internet"
  default     = "0.0.0.0/0"
}
