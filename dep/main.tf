provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_instance" "db" {
  ami = "ami-01748a72bed07727c"
  instance_type = "t2.micro"
  tags = {
    Name = "DB Server"
  }
}

resource "aws_instance" "web" {
  ami = "ami-01748a72bed07727c"
  instance_type = "t2.micro"
  depends_on = [ aws_instance.db ]
}

data "aws_instance" "dbsearch" {
  filter {
    name = "tag:Name"
    values = [ "DB Server" ]
  }
}

output "dbservers" {
  value = data.aws_instance.dbsearch.availability_zone
}