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

# Define role name
variable "iam-role-name" {
  type        = string
  description = "IAM role name"
  default     = "ec2-admin-role"
}

# Define role path
variable "iam-role-path" {
  type        = string
  description = "IAM role path"
  default     = "/"
}

# Define Policy. Policy consist list of AWS managed polices
variable "iam-role-policy-attachment" {
  type        = list(string)
  description = "List of IAM policies"
  default = [
    "arn:aws:iam::aws:policy/AmazonEC2FullAccess",
    "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  ]
}
