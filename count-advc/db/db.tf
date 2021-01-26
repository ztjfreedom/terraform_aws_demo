variable "server_names" {
  type = list(string)
}

resource "aws_instance" "db" {
  ami = "ami-01748a72bed07727c"
  instance_type = "t2.micro"
  count = length(var.server_names)
  tags = {
    Name = var.server_names[count.index]
  }
}

output "PrivateIP" {
    value = aws_instance.db.*.private_ip  // value = aws_instance.db.0(/1/2).private_ip
}