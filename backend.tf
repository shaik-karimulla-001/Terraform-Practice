terraform {
  backend "s3" {
    bucket = "my-tf-state-bckup"
    key = "main"
    region = "ap-south-1"
    dynamodb_table = "my-dynamo-table"
  }
}
