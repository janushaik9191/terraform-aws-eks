terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~>5.0"
    }
  }

  backend "s3" {
    bucket = "meerjan-s3-remote"
    key    = "expense-ingress-alb"
    region = "us-east-1"
    dynamodb_table = "meerjan-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}