terraform {
  backend "s3" {
    bucket         = "terraform-state-demo-123456"
    key            = "dev/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock"
  }
}