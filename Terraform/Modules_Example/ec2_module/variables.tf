# ec2-module/variables.tf

variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "The type of instance to create"
  type        = string
  default     = "t2.micro"
}

variable "instance_name" {
  description = "The name tag for the EC2 instance"
  type        = string
}

variable "region" {
  description = "The AWS region where the EC2 instance will be launched"
  type        = string
  default     = "us-west-2"
}
