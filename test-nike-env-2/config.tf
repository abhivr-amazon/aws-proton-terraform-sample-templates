/*
This file is no longer managed by AWS Proton. The associated resource has been deleted in Proton.
*/

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "s3" {
    bucket = "ngap2-terraform-east"
    key    = "workspaces/terraform.tfstate"
    region = "us-east-1"
  }

}

# Configure the AWS Provider
provider "aws" {
  region = var.aws_region
  default_tags {
    tags = {
      "proton:environment" = var.environment.name
    }
  }
}

