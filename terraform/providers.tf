terraform {
  required_version = ">=1.7.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.35.0"
    }
  }

  backend "s3" {
    region = "ap-southeast-1"

    bucket = "jl-terraform-remote-state-store"
    key    = "account-wide-terraform-support/terraform.tfstate"

    dynamodb_table = "terraform_state_lock"
  }
}

provider "aws" {
  region = "ap-southeast-1"
}
