terraform {
  backend "s3" {
    bucket = "my-s3-bucket-for-tf-state"
    key = "main"
    region = "us-east-1"
    dynamodb_table = "new-dynamo-db-table-tf"
  }
}
