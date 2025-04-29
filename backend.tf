terraform {
  backend "s3" {
    bucket         = "teja-terraform-logicel-test "
    key            = "terraform.tfstate"
    region         = "us-east-1"
    # dynamodb_table = "terraform-lock"
    encrypt        = true
  }
} 