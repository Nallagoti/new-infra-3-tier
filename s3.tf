provider "aws" {
  region = "ap-south-1"
}
resource "aws_s3_bucket" "example_bucket" {
  bucket = "nissitha-demo-bucket-12345"
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.example_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}

