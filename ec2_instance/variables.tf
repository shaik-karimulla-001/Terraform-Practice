variable "aws_region" {
  description = "The AWS region to use"
  default     = "us-east-1"
}

variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
   type = string
  default    = "ami-0fc5d935ebf8bc3bc"
}

variable "instance_type" {
  description = "The EC2 instance type"
  default     = "t2.micro"
}
