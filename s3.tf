resource "aws_s3_bucket" "my-tokkalo-bucket" {
 bucket_prefix = var.bucket_prefix
  acl = var.acl
  
   versioning {
    enabled = var.versioning
  }
  
  tags = var.tags
}
