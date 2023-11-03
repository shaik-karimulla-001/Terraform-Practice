terraform {
  backend "s3" {
    bucket = "marathali-bucket"
    key    = "Modules"
    region = "us-east-1"
  }
}
