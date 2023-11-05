provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "example" {
  ami        = var.ami_id
  instance_type = var.instance_type
}

variable "key_name" {
  default     = "var.key_name
}
