terraform {
  backend "s3" {
    bucket         = "mati-devops-lab-tf-remote-state"
    key            = "lab/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "mati-devops-lab-tf-state-lock-table"
  }
}