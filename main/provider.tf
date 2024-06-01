locals {
  region     = "eu-west-2"
  access_key = "AKIAVRUVVTZBFB23W3HE"
  secret_key = "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"
}


terraform {
  backend "s3" {
    bucket = "samvel-terraform-backend"
    key    = "key/terraform.tfstate"
    region = "eu-west-2"
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region     = local.region
  access_key = local.access_key
  secret_key = local.secret_key
}