terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.11.0"
    }
  }

  backend "s3" {
    bucket = "aws-bucket-balaji"
    key    = "provisioners" # key need to change for every project to avoid error conflicts
    region = "us-east-1"
    encrypt        = true
    use_lockfile   = true
  }
}

provider "aws" {
  # Configuration options
}