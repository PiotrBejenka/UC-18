terraform {
  backend "s3" {
    key    = "uc18-state-file/terraform.tfstate"
    bucket = "remote-backend-uc18"
    region = "us-east-1"

    dynamodb_table = "state-lock-uc18"
    encrypt        = true
  }
}