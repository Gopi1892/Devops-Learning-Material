provider "aws" {
  region = "us-west-2"  # Change to your desired AWS region
}

# Create an S3 bucket
resource "aws_s3_bucket" "example_bucket1" {
  bucket = "myexamplebucketyou21"  # Unique bucket name
}

# Enable bucket versioning
resource "aws_s3_bucket_versioning" "example_bucket_versioning" {
  bucket = aws_s3_bucket.example_bucket1.bucket

  versioning_configuration {
    status = "Enabled"
  }
}

# Separate resource for server-side encryption
resource "aws_s3_bucket_server_side_encryption_configuration" "example_bucket_encryption" {
  bucket = aws_s3_bucket.example_bucket1.bucket

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

# Random string for bucket name uniqueness
resource "random_string" "bucket_suffix" {
  length  = 6
  special = false
}

# Output the S3 bucket name
output "s3_bucket_name" {
  description = "The name of the S3 bucket"
  value       = aws_s3_bucket.example_bucket1.bucket
}
