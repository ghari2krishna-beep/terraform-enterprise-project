provider "aws" {
  region = "ap-south-1"
}

module "vpc" {
  source             = "../../modules/vpc"
  vpc_cidr           = "10.3.0.0/16"
  public_subnet_cidr = "10.3.1.0/24"
  az                 = "ap-south-1a"
  vpc_name           = "prod-vpc"
}

module "security_group" {
  source = "../../modules/security-group"
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source        = "../../modules/ec2"
  ami_id        = var.ami_id
  instance_type = var.instance_type
  subnet_id     = module.vpc.subnet_id
  sg_id         = module.security_group.sg_id
  key_name      = var.key_name
  instance_name = "prod-web-server"
}