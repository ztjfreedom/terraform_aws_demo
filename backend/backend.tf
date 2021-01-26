terraform {
  backend "s3" {
      key = "terraform/tfstate.tfstate"
      bucket = "tj-terraform-backend-202101"
      region = "ap-northeast-1"
      access_key = ""  # cat ~/.aws/credentials
      secret_key = ""
  }
}