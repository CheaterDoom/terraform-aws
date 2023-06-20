terraform {
  required_version = "1.4.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.67.0"
    }
  }
}

provider "aws" {
  region = "sa-east-1"
}

resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "my-tf-test-bucket9029300911238123"
  tags = {
    name        = "My bucket"
    Environment = "infra"
    ManagedBy   = "Terraform"
  }
}