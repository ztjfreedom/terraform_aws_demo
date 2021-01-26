provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_vpc" "myvpc" {
  cidr_block = "10.0.0.0/16"
}

# terraform import aws_vpc.myvpc2 vpc-0285a178e9f1fc427
# move the resource under the control of myvpc2
resource "aws_vpc" "myvpc2" {
  cidr_block = "192.168.0.0/24"
}