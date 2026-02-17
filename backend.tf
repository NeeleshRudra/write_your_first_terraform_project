terraform {
  required_version = ">= 0.12"

  backend "s3" {
    bucket         = "021754676677-terraform-states"
    key            = "global/terraform.tfstate"
    region         = "eu-north-1" 
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}
