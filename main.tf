provider "aws" {
  region = "us-east-1"
}


#need to create a bucket to store the .tfstate file
resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-bucket-name-123456"
  tags = {
    Name        = "MyBucket"
    Environment = "Dev"
  }
}
