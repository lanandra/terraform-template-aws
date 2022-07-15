variable "instance_name" {
  type        = string
  description = "Lightsail instance name"
  default     = ""
}

variable "availability_zone" {
  description = "Region availability zone"
}

variable "wp_blueprint_id" {
  type        = string
  description = "WordPress blueprint id"
  default     = "wordpress"
}

variable "bundle_id" {
  type        = string
  description = "Lightsail bundle id"
  default     = "nano_2_0"
}

variable "lightsail_key_pair" {
  type        = string
  description = "Key pair used for ssh access"
  default     = "lightsail-apse1"
}

variable "instance_tags" {
  type        = map(string)
  description = "Set key value tags for lightsail instance"
  default     = {}
}
