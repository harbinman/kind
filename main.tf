



resource "aws_instance" "kind" {
  ami                         = var.ami_id
  key_name                    = var.key_name
  associate_public_ip_address = var.associate_public_ip_address
  availability_zone           = var.availability_zone
  vpc_security_group_ids      = var.vpc_security_group_ids
  subnet_id                   = var.subnet_id
  user_data                   = file("${path.module}/script.sh")
  instance_type               = var.instance_type
  root_block_device {
    volume_size = 20
  }
  tags = {
    "name" = var.tag_name

  }
}


# resource "aws_ebs_volume" "ec2_ebs" {
#   availability_zone = "ap-southeast-1a"
#   size              = var.ebs_size

#   tags = {
#     Name = "ec2_ebs"
#   }
# }
# resource "aws_volume_attachment" "ebs_att" {
#   device_name = "/dev/sdh"
#   volume_id   = aws_ebs_volume.ec2_ebs.id
#   instance_id = aws_instance.kind.id
# }
