terraform {
  backend "s3" {
    bucket = "karim546-bucket"
    key    = "Modules"
    region = "ap-south-1"
  }
}
