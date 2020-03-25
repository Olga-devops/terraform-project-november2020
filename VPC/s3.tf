resource "aws_s3_bucket" "b" {
  bucket = "terraform-project-backend-2020"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}