# Specify the AWS provider and region using variables
variable "aws_region" {
  type    = string
  default = "us-east-1"  # You can set a default value or leave it empty
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
resource "aws_security_group" "super-secure" {
  name        = "var.security_group"
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
    Name = "var.security_group"
  }
}

# Create an EC2 instance
resource "aws_instance" "yellow" {
  ami           = "var.ami_id"
  key_name      = "var.key_name"
  instance_type = "var.instance_type"
  vpc_security_group_ids = [aws_security_group.super-secure.id]
  
}

# Create the DynamoDB table
resource "aws_dynamodb_table" "my-dynamodb-table" {
  name           = "my-dynamodb-table"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "my-apple-key"
  range_key      = "my-android-key"

  attribute {
    name = "my-apple-key"
    type = "S"
  }

  attribute {
    name = "my-android-key"
    type = "N"
  }

  # Define the provisioned throughput, if using "PROVISIONED" billing mode
  # provisioned_throughput {
  #   read_capacity  = 5
  #   write_capacity = 5
  # }
}
