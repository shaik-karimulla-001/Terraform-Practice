     variable "aws_region" {
    description = "The AWS region to create things in." 
    default     = "ap-south-1" 
}

variable "key_name" { 
 description = " SSH keys to connect to ec2 instance" 
 default     =  "karim" 
}

variable "instance_type" { 
 description = "instance type for ec2" 
 default     =  "t2.micro" 
}

variable "security_group" { 
 description = "Name of security group" 
 default     = "terraform-sg-group" 
}

variable "tag_name" { 
 description = "Tag Name of for Ec2 instance" 
 default     = "yellow-instance" 
} 
variable "ami_id" { 
 description = "AMI for Ubuntu Ec2 instance" 
 default     = "ami-099b3d23e336c2e83" 
}
variable "versioning" {
 type        = bool
 description = "(Optional) A state of versioning."
 default     = "true"
}
variable "acl" {
 type        = string
 description = " Defaults to private "
 default     = "private"
}
variable "bucket_prefix" {
 type        = string
 description = "(required since we are not using 'bucket') Creates a unique bucket name beginning with the specified prefix"
 default     = "marathali-bucket"
}
variable "tags" {
 type        = map
 description = "(Optional) A mapping of tags to assign to the bucket."
 default     = {
     environment = "DEV"
     terraform   = "true"
 }
}
