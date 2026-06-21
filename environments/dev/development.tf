terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
    }
      backend "s3" {
        bucket = "terraformbucket53"
        key    = "/environmentrs/dev/developments"
        region = "us-east-1"   //we can't create as variable 


    }
  }


# Configure the AWS Provider
provider "aws" {
  region = var.awsregions
}

