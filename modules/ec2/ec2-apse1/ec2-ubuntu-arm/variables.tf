# Define EC2 instance type
variable "ec2_instance_type" {
  type        = string
  description = "Amazon EC2 instance type"
  default     = "t4g.micro"
}

# Define EC2 instance volume size
variable "ec2_volume_size" {
  type        = number
  description = "Amazon EC2 instance volume size"
  default     = 10
}

# Set default keypair
variable "ec2_keypair" {
  type        = string
  description = "EC2 Keypair"
  default     = "demo-key"
}

# Set default tags
variable "ec2_tags" {}

variable "ec2_instace_profile" {
  type        = string
  description = "EC2 IAM instance profile"
  default     = "ec2-admin"
}

variable "associate_public_ip" {
  type    = bool
  default = false
}

variable "vpc_security_group" {
  type        = string
  description = "Security group used by instance"
}

variable "vpc_subnet" {
  type        = string
  description = "Subnet used by instance"
  default     = ""
}
