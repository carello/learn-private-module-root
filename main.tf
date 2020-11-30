terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = var.region
}

# Enter my organization name "app.terraform.io/<my org name>/s3-webapp/aws"
module "s3-webapp" {
  source  = "app.terraform.io/carello/s3-webapp/aws"
  name        = var.name
  region = var.region
  prefix = var.prefix
  version = "1.0.0"
}
