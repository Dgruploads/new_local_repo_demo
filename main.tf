provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "demo_instance" {
  instance_type = "t2.micro"
  ami           = "ami-12345"
}
