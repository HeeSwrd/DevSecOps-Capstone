provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "insecure_bucket" {
  bucket = "my-devsecops-demo-bucket"
  acl    = "public-read" # Intentional security issue
}
