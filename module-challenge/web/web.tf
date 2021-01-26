resource "aws_instance" "web" {
  ami = "ami-01748a72bed07727c"
  instance_type = "t2.micro"
  security_groups = [ module.sg.sg_name ]
  user_data = file("./web/server-script.sh")
  tags = {
    Name = "Web Server"
  }
}

module "eip" {
    source = "../eip"
    instance_id = aws_instance.web.id
}

module "sg" {
    source = "../sg"
}

output "public_ip" {
    value = module.eip.PublicIP
}