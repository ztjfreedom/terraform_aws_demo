resource "aws_instance" "db" {
  ami = "ami-01748a72bed07727c"
  instance_type = "t2.micro"
  tags = {
    Name = "DB Server"
  }
}

output "PrivateIP" {
    value = aws_instance.db.private_ip
}