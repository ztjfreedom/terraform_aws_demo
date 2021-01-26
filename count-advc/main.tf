provider "aws" {
  region = "ap-northeast-1"
}

module "db" {
  source = "./db"
  server_names = ["mariadb", "mysql", "mssql"]
}

output "private_ips" {
  value = module.db.PrivateIP
}