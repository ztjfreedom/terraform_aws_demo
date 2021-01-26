provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_instance" "ec2" {
  ami = "ami-01748a72bed07727c"
  instance_type = "t2.micro"
}