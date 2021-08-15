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
  default     = [
                  "arn:aws:iam::aws:policy/AmazonEC2FullAccess",
                  "arn:aws:iam::aws:policy/AmazonS3FullAccess" 
                ]
}
