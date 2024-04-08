terraform {
  required_version = ">= 1.5.1"
  
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "sample" {
  bucket = "20240408-learn-terraform"
  tags = {
    purpose = "20240408-learn-terraform"
  }
}
