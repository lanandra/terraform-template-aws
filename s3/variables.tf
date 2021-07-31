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
  default     = "ludes-terraform-admin"
}

# Setup S3 acl
variable "s3_acl" {
  type        = string
  description = "s3 acl permissions"
  default     = "private"
}

# Setup S3 bucket versioning
variable "s3_versioning" {
  type        = bool
  description = "s3 bucket versioning"
  default     = true
}

# Setup S3 bucket encryption
variable "s3_encryption" {
  type        = string
  description = "s3 default encryption type"
  default     = "AES256"
}

# Setup S3 bucket lifecycle rule name
variable "s3_lifecycle_rule_id" {
  type        = string
  description = "s3 lifecycle id/rule name"
  default     = "delete-previous-version-after-1-day"
}

# Setup S3 bucket lifecycle rule object prefix
variable "s3_lifecycle_rule_prefix" {
  type        = string
  description = "Identify s3 object prefix that will match in lifecycle rule"
  default     = "demo"
}

# Setup S3 bucket lifecycle rule
variable "s3_lifecycle_rule" {
  type        = bool
  description = "s3 lifecycle rule"
  default     = true
}

# Setup S3 bucket object expiration for noncurrent version
variable "s3_noncurrent_version_expiration" {
  type        = number
  description = "Set expiration day for noncurrent version"
  default     = 1
}

# Setup S3 block public acl
variable "s3_block_public_acl" {
  type        = bool
  description = "s3 block public acl"
  default     = true
}

# Setup S3 block public policy
variable "s3_block_public_policy" {
  type        = bool
  description = "s3 block public policy"
  default     = true
}

# Setup S3 ignore public acl
variable "s3_ignore_public_acl" {
  type        = bool
  description = "s3 ignore public acl"
  default     = true
}

# Setup S3 restrict public bucket
variable "s3_restrict_public_buckets" {
  type        = bool
  description = "s3 restric public bucket"
  default     = true
}
