variable "tf_state_bucket" {
  description = "Name of the S3 bucket in AWS for storing the state"
  default     = "ciphersecio-devops-recipe-app-api-state"
}

variable "tf_state_lock_table" {
  description = "Name of the dynamodb table for the TF state locking"
  default     = "ciphersecio-devops-recipe-app-api-tf-lock"
}

variable "project" {
  description = "Project name for tagging resources"
  default     = "ciphersecio-app-api"
}

variable "contact" {
  description = "Contact name for tagging resources"
  default     = "info@ciphersecio.co.uk"
}
