variable "aws_region" {
  description = "The AWS region to use"
  default     = "us-east-1"
}

variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  ami_id    = "ami-05c13eab67c5d8861"
}

variable "instance_type" {
  description = "The EC2 instance type"
  default     = "t2.micro"
}
