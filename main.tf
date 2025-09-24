provider "aws" {
  region = "us-east-1"
}

variable "instance_type_name" {
  type = string
}

variable "instance_image" {
  type = string
}

resource "aws_instance" "demo_instance" {
  instance_type = var.instance_type_name
  ami           = var.instance_image
}

output "instance_public_ip_addr" {
#  value = aws_instance.demo_instance.public_ip
}

output "instance_availability_zone" {
  value = aws_instance.example_terraform.availability_zone
}
