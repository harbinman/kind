output "ec2_ip" {
  value = aws_instance.kind.public_ip
}


output "ec2_keypair" {
  value = aws_instance.kind.key_name
}
