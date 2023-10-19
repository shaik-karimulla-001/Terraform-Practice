terraform {
  backend "s3" {
    bucket = "my-s3-bucket-for-tf-state"
    key    = "main"
    region = "ap-south-1"
    dynamodb_table = "new-dynamo-db-table-tf"
  }
}
