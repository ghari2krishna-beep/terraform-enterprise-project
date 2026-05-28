terraform {
  backend "s3" {
    bucket = "terraform-state-hari1"
    key    = "dev/terraform.tfstate"
    region = "ap-south-1"
  }
}
