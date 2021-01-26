provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_db_instance" "myRDS" {
  name = "myDB"  # name of the db
  identifier = "my-first-rds"  # name of the server
  instance_class = "db.t2.micro"
  engine = "mariadb"
  engine_version = "10.2.21"
  username = "admin"  # best practice is to inject secrets
  password = "password123"
  allocated_storage = 20
  port = 3306
  skip_final_snapshot = true
}