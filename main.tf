# Specify the AWS provider and region using variables
provider "aws" {
  region = var.aws_region
}

# Create a VPC
resource "aws_vpc" "main" {
  cidr_block       = "172.16.0.0/16"
  instance_tenancy = "default"
  tags = {
    Name = "main"
  }
}

# Create a security group with firewall rules
resource "aws_security_group" "jenkins-sg-2022" {
  name        = var.security_group
  description = "Security group for EC2 instance"

  # Ingress rules
  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Egress rule (outbound from Jenkins server)
  egress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.security_group
  }
}

# Create an EC2 instance
resource "aws_instance" "myfirst-Terraform-Instance" {
  ami           = var.ami_id
  key_name      = var.key_name
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.jenkins-sg-2022.id]
  tags = {
    Name = var.tag_name
  }
}
#create dynamodb table
variable "table_name" {
  description = "Name for the DynamoDB table"
  type        = string
  default     = "my-dynamo-table"
}

variable "read_capacity" {
  description = "Read capacity for the DynamoDB table"
  type        = number
  default     = 5
}

variable "write_capacity" {
  description = "Write capacity for the DynamoDB table"
  type        = number
  default     = 5
}

