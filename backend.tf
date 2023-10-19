terraform {
  backend "s3" {
    bucket = "my-tokkalo-bucket"
    key    = "main"
    region = "ap-south-1"
  }
}
