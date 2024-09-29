# main.tf

provider "aws" {
  region = var.region
}

module "ec2_instance" {
  source        = "./ec2-module"     # Path to your module
  ami_id        = var.ami_id
  instance_type = var.instance_type
  instance_name = var.instance_name
  region        = var.region
}

output "ec2_instance_id" {
  value = module.ec2_instance.instance_id
}

output "ec2_instance_public_ip" {
  value = module.ec2_instance.public_ip
}

output "ec2_instance_private_ip" {
  value = module.ec2_instance.private_ip
}
