resource "aws_s3_bucket" "b" {
   provider    =  "aws.virginia"
  bucket = "terraform-project-backend-2020"



  tags = {
    Name        = "My bucket"
    Environment = "dev"
  }
}
