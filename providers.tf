terraform{
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "~> 6.0"
        }
    }
    backend "s3" {
    bucket         = "bladeoski-tfstate"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "tfstate-blade"
    encrypt        = true
  }
}
provider "aws" {
    region = var.aws_region
}
