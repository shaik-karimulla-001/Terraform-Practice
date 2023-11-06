provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "module-instance" {
  ami        = var.ami_id
  instance_type = var.instance_type
}

resource "key_name" {
  default     = var.key_name
}
