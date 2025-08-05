# main.tf

# Configure AWS Provider
provider "aws" {
}

# Create S3 Bucket
resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-bucket-name-2025-chakradd"  # Must be globally unique
  
  tags = {
    Environment = "Production"
    Project     = "Demo"
    Owner       = "ams-chakradd"
  }
}

# Output the bucket name
output "bucket_name" {
  value = aws_s3_bucket.my_bucket.id
}