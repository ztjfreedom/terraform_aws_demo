provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_instance" "ec2" {
  ami = "ami-01748a72bed07727c"
  instance_type = "t2.micro"
  security_groups = [ aws_security_group.webtraffic.name ]
}

resource "aws_security_group" "webtraffic" {
    name = "allow https"
    ingress {
        from_port = 443
        to_port = 443
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port = 443
        to_port = 443
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }
}