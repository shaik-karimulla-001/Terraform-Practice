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
provider "aws" {
  region = "ap-south-1" # Use the desired AWS region
}

resource "aws_dynamodb_table" "new-dynamodb-table" {
  name           = var.table_name
  billing_mode   = "PROVISIONED" # You can choose "PAY_PER_REQUEST" for on-demand capacity
  read_capacity  = 5             # Adjust as needed
  write_capacity = 5             # Adjust as needed

  attribute {
    name = "karim"
    type = "S" # String
  }

  key_schema {
    hash_key = "karim"
  }
}

 
