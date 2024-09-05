variable "prefix" {
  description = "Prefix for resources in AWS"
  default     = "csi"
}

variable "project" {
  description = "Project name for tagging resources"
  default     = "ciphersecio-app-api"
}

variable "contact" {
  description = "Contact email for tagging resources"
  default     = "info@ciphersecio.co.uk"
}
