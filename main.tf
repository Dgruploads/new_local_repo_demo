provider "aws" {
  region = "us-east-1"
}

variable "instance_type_name" {
  type = string
  default = "t2.micro"
}

resource "aws_instance" "demo_instance" {
  instance_type = var.instance_type_name
  ami           = "ami-12345"
}
