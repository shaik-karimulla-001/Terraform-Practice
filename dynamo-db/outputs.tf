# Define an output to expose the DynamoDB table name
output "dynamodb_table_name" {
  value = aws_dynamodb_table.my-dynamodb-table1.name
}
output "dynamodb_table_arn" {
  value = aws_dynamodb_table.my-dynamodb-table1.arn
}
