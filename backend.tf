terraform {
  backend "s3" {
    bucket = "marathali-bucket"
    key    = "main"
    region = "us-east-1"
  }
}
