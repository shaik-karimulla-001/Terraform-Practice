terraform {
  backend "s3" {
    bucket = "my-tokkalo-bucket-for-tf-state"
    key    = "main"
    region = "ap-south-1"
  }
}
