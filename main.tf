terraform {
  required_version = ">= 0.12.24"

  backend "s3" {
    bucket = "aws-tfstate-bucket-042524"
    key    = "aws-deployment.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region     = "us-east-1"
}
