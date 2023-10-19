terraform {
  backend "s3" {
    bucket = "my-tf-state-backup"
    key = "main"
    region = "ap-south-1"
  }
}
