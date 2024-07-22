variable "ami_id" {
  type        = string
  default     = "ami-0497a974f8d5dcef8"
  description = "ami_id"
}

variable "key_name" {
  type        = string
  default     = "aws-ec2-keypair"
  description = "key_name"
}


variable "associate_public_ip_address" {
  type        = bool
  default     = true
  description = "associate_public_ip_address"
}


variable "availability_zone" {
  type        = string
  default     = "ap-southeast-1a"
  description = "availability_zone"
}

variable "vpc_security_group_ids" {
  type        = list(string)
  default     = ["sg-00467812237ecf509"]
  description = "vpc_security_group_ids"
}

variable "subnet_id" {
  type        = string
  default     = "subnet-074087e9ecf20fb88"
  description = "subnet_id"
}

variable "tag_name" {
  type        = string
  description = "tag_name"
}


variable "instance_type" {
  type = string
  default = "t3.large"
  description = "instance_type"
}

variable "ebs_size" {
  type = number
  default = 30
  description = "ebs size"
}