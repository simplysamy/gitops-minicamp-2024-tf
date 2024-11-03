terraform {
    required_version = "~> 1.9.5"
    backend "s3" {
    bucket = "gitops-tf-backend-7079"
    key    = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "GitopsTerraformLocks"
  }
}