resource "aws_s3_bucket" "service_bucket" {
  bucket = "service-bucket-jxxmon"
  force_destroy = true
  tags = {
    Name = "Service_bucket"
  }
} 