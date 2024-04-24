terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-west-1" # Choose the region appropriate for you
}

resource "aws_s3_bucket" "well_terraformed_framework" {
  bucket = "well-terraformed-framework"
}
