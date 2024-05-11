terraform {
  backend "s3" {
    bucket = "terraform-day2-lab2"
    key    = "terraform.tfstat"
    region = "us-east-1"   # Default region, will be overridden by the region variable
    dynamodb_table = "state-lock"
  }
}
