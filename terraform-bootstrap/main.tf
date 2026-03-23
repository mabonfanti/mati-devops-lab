provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "tf_state" {
  bucket = "mati-devops-lab-tf-remote-state"
}

resource "aws_dynamodb_table" "tf_locks" {
  name         = "mati-devops-lab-tf-state-lock-table"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}