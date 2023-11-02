provider "aws" {
  region = "us-east-1"
  # Add your AWS access and secret keys here, or use an AWS profile
}

resource "aws_s3_bucket" "marathali-bucket" {
  bucket = "marathali-bucket"
}
