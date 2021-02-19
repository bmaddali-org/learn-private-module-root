provider "aws" {
  region = var.region
}

module "s3-webapp" {
  source  = "app.terraform.io/RH-dev/s3-webapp/aws"
  name        = var.name
  region = var.region
  prefix = var.prefix
  version = "2.1.1"
  s3_tags = {
    Name        = "AT Website Bucket"
    Environment = "dev"
  }
}
