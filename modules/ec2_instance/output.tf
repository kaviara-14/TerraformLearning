output "ec2_publicIp" {
    value = aws_instance.ec2_server.public_ip
}

output "public_dns" {
  value = aws_instance.ec2_server.public_dns
}