provider "aws" {
  region = "us-east-1"
}

variable "instance_type_name" {
  type = string
  default = "t2.micro"
}

variable "instance_image" {
  type = string
  default = "ami-12345"
}

resource "aws_instance" "demo_instance" {
  instance_type = var.instance_type_name
  ami           = var.instance_image
}
