provider "aws" {
  region = "us-east-1"
}

terraform {
  required_version = ">= 0.12.24"

  backend "s3" {
    bucket = "aws-tf-bucket"
    key    = "aws-deployment.tfstate"
    region = "us-east-1"
  }
}
