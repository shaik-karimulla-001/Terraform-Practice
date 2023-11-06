variable "aws_region" {
  description = "The AWS region to use"
}

variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
}

variable "instance_type" {
  description = "The EC2 instance type"
}

variable "key_name" {
  description = "SSH keys to connect to ec2 instance"
}
