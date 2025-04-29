terraform {
  backend "s3" {
    bucket         = "logicel-aws-budgettracker-state-bucket"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    # dynamodb_table = "terraform-lock"
    encrypt        = true
  }
} 