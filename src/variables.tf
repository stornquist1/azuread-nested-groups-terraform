variable "tenant_id" {
  description = "The Azure tenant ID"
  type        = string
  default     = null
}

variable "metadata_host" {
  description = "The Azure AD metadata host"
  type        = string
  default     = null
}

variable "environment" {
  description = "The Azure environment"
  type        = string
  default     = null
}