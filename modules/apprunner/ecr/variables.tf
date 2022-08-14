variable "service_name" {
  type        = string
  description = "App Runner service name"
  default     = ""
}

variable "ecr_access_role_arn" {
  type        = string
  description = "ARN of ecr access role"
  default     = "arn:aws:iam::12digitsawsid:role/service-role/AppRunnerECRAccessRole"
}

variable "auto_deployment" {
  type        = bool
  description = "Whether auto deployment is enabled or disabled"
  default     = false
}

variable "container_port" {
  type        = string
  description = "Container port used by application"
  default     = ""
}

variable "container_image" {
  type        = string
  description = "URI of ECR container image"
  default     = ""
}

variable "ecr_repository_type" {
  description = "Whether ECR repository is private or public"
}

variable "cpu" {
  type        = number
  description = "CPU allocation"
}

variable "memory" {
  type        = number
  description = "Memory allocation"
}

variable "outgoing_network_traffic" {
  type        = string
  description = "Whether outgoing network traffic is public only or public+private via VPC"
  default     = "public"

  validation {
    condition     = contains(["public", "vpc"], var.outgoing_network_traffic)
    error_message = "Outgoing network traffic should be public or vpc."
  }
}

variable "vpc_connector_arn" {
  type        = string
  description = "ARN of VPC connector"
  default     = ""
}

variable "service_tags" {
  type        = map(string)
  description = "Set key value tags for App Runner service"
  default     = {}
}
