variable "bucket_name" {
  type        = string
  description = "S3 bucket name"
}

variable "bucket_tags" {
  type        = map(string)
  description = "Set key value tags for s3 bucket"
  default     = {}
}

variable "block_public_acls" {
  type        = bool
  description = "Whether block public acl or not"
  default     = true
}

variable "block_public_policy" {
  type        = bool
  description = "Whether block public policy or not"
  default     = true
}

variable "ignore_public_acls" {
  type        = bool
  description = "Whether ignore public acls or not"
  default     = true
}

variable "restrict_public_buckets" {
  type        = bool
  description = "Whether restrict public buckets or not"
  default     = true
}

variable "redirect_host_name" {
  type        = string
  description = "Destination hostname for redirect request"
  default     = true
}

variable "redirect_protocol" {
  type        = string
  description = "Protocol use by redirect host"
  default     = "https"
}
