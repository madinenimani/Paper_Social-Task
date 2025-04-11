terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region     = "ap-south-1"
  access_key = "AWS_ACCESS_KEY_ID"
  secret_key = "AWS_SECRET_ACCESS_KEY"
}

module "ec2_instance" {
  source        = "./modules/ec2"
  instance_type = var.instance_type
  key_name      = var.key_name
  ami = var.ami
}

terraform {
  backend "s3" {
    bucket = "paper-state-file-terraform"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}