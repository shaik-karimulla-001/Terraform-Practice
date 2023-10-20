terraform {
  backend "s3" {
    bucket = "marathali-bucket"
    key    = "main"
    region = "ap-south-1"
  }
}
