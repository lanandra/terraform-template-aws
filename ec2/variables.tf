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

# Define EC2 instance type
variable "ec2_instance_type" {
  type        = string
  description = "Amazon EC2 instance type"
  default     = "t2.micro" # Please change ec2 instance type here
}

# Define EC2 instance volume size
variable "ec2_volume_size" {
  type        = number
  description = "Amazon EC2 instance volume size"
  default     = 10 # Please change ec2 root volume size here
}
