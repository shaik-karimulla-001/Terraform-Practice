resource "aws_s3_bucket" "my-tokkalo-bucket" {
  bucket = "your-bucket-name"  # Replace with your desired bucket name
  acl = var.acl

  versioning {
    enabled = var.versioning
  }

  tags = var.tags
}
