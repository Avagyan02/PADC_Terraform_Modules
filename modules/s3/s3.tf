resource "aws_s3_bucket" "main-2" {
  bucket = var.bucket_name

  tags = {
    Name      = var.bucket_name
    Terraform = true
  }

  versioning {
    enabled = var.bucket_versioning
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = var.bucket_encryption_type
      }
    }
  }
}
