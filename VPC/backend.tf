terraform {
backend "s3" {
bucket = "terraform-project-backend-2020"
key = "tower/us-east-1/tools/virginia/new-best-tower-team1.tfstate"
region = "us-east-1"
dynamodb_table = "terraform-team1"
  }
}
