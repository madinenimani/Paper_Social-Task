provider "aws" {
  region = "ap-south-1"
}

module "ec2_instance" {
  source        = "./modules/ec2"
  instance_type = var.instance_type
  key_name      = var.key_name
  ami = var.ami_id 
}