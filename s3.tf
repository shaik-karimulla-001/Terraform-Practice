resource "aws_s3_bucket" "my-tokkalo-bucket" {
  bucket = "my-tokkalo-bucket"  # Replace with your desired bucket name
  acl = var.acl

  versioning {
    enabled = var.versioning
  }

  tags = var.tags
}
