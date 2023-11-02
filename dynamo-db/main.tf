
# Create the DynamoDB table
resource "aws_dynamodb_table" "new-dynamodb-table" {
  name           = "new-dynamodb-table"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "my-apple-key"
  range_key      = "my-android-key"

  attribute {
    name = "my-apple-key"
    type = "S"
  }

  attribute {
    name = "my-android-key"
    type = "N"
  }

  # Define the provisioned throughput, if using "PROVISIONED" billing mode
  # provisioned_throughput {
  #   read_capacity  = 5
  #   write_capacity = 5
  # }
}
