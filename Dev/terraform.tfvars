# Specify the AWS region
aws_region = "ap-south-1"

ami = "ami-0287a05f0ef0e9d9a"
key_name = "karim"
instance_type = "t2.micro"

# create s3 bucket
 bucket = "karim546-bucket"

# my-dynamodb-table1.tfvars
name = "my-dynamodb-table1"
billing_mode = "PAY_PER_REQUEST"
hash_key = "my-apple-key"
range_key = "my-android-key"

my-apple-key-type = "S"
my-android-key-type = "N"

# If you were using provisioned throughput, you would set these values:
# read_capacity = 5
# write_capacity = 5
