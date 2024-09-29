# variables.tf

variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance"
  type        = string
  default     = "ami-0790368b78dc061cb"  # Example AMI ID
}

variable "instance_type" {
  description = "The type of instance to create"
  type        = string
  default     = "t2.micro"
}

variable "instance_name" {
  description = "The name of the EC2 instance"
  type        = string
  default     = "my-ec2-instance"
}

variable "region" {
  description = "AWS region to create the instance in"
  type        = string
  default     = "us-east-1"
}
