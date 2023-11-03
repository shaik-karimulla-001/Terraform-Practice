variable "aws_region" {
  description = "The AWS region to use"
  default     = "us-east-1"
}

variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  default     = "ami-0c55b159cbfafe1f0"
}

variable "instance_type" {
  description = "The EC2 instance type"
  default     = "t2.micro"
}
