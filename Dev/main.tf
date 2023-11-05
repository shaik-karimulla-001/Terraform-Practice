provider "aws" {
  region = "ap-south-1"
}

module "ec2_instance" {
  source = "./ec2_instance"
}
module "aws_dynamodb_table" {
  source = "./dynamo-db"
}

module "s3-bucket" {
  source = "./s3.tf"
}
