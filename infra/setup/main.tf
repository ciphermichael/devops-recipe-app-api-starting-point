terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.23.0"
    }
  }


  backend "s3" {
    bucket         = "ciphersecio-devops-recipe-app-api-state"
    key            = "tf-state-setup"
    region         = "eu-west-1"
    encrypt        = true
    dynamodb_table = "ciphersecio-devops-recipe-app-api-tf-lock"
  }
}

provider "aws" {
  region = "eu-west-1"
  default_tags {
    tags = {
      Environment = terraform.workspace
      Project     = var.project
      Contact     = var.contact
      ManagedBy   = "Terraform/setup"
    }
  }
}
