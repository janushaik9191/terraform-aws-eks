terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.0"
    }
  }
  backend "s3" {
    bucket         = "meerjan-s3-remote"
    key            = "expense-dev-acm"
    region         = "us-east-1"
    dynamodb_table = "meerjan-locking"
  }

}
provider "aws" {
  region = "us-east-1"
}