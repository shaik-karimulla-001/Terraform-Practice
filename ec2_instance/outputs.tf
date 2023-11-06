output "public-ip-address" {
  value = aws_instance.module-instance.public_ip
}
output "private-ip-address" {
  value =aws_instance.module-instance.private-ip
}
