terraform {
  backend "s3" {
    bucket = "marathali-bucket"
    key    = "Modules"
    region = "ap-south-1"
  }
}
