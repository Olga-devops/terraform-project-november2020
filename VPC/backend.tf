terraform {
backend "s3" {
bucket = "my-test-bucket-int"
key = "tower/us-east-1/tools/virginia/tower.tfstate"
region = "us-east-1"
  }
}