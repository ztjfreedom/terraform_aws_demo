provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_instance" "ec2" {
  ami = "ami-01748a72bed07727c"
  instance_type = "t2.micro"
}

resource "aws_eip" "elasticip" {
  instance = aws_instance.ec2.id
}

output "EIP" {
  value = aws_eip.elasticip.public_ip
}