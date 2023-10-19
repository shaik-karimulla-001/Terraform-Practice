terraform {
  backend "s3" {
    bucket = "my-tokkalo-bucket-tf-state"
    key    = "main"
    region = "ap-south-1"
  }
}
