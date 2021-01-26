provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_vpc" "test" {
  cidr_block = "10.0.0.0/16"
}