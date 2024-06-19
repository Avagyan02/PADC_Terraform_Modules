resource "aws_s3_bucket" "main" {
  bucket = var.bucket_name

  tags = {
    Name      = var.bucket_name
    Terraform = true
  }

  website {
    index_document = var.static_website_index_key
    error_document = var.static_website_error_key
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

resource "aws_s3_bucket_object" "index" {
  bucket = aws_s3_bucket.main.bucket
  key    = var.static_website_index_key
  source = var.static_website_index_source
  acl    = var.static_website_index_acl
}

resource "aws_s3_bucket_object" "error" {
  bucket = aws_s3_bucket.main.bucket
  key    = var.static_website_error_key
  source = var.static_website_error_source
  acl    = var.static_website_error_acl
}

resource "aws_s3_bucket_object" "files" {
  for_each = { for file in var.files_to_upload : file => file }

  bucket = aws_s3_bucket.main.bucket
  key    = each.value
  source = each.value
  acl    = "public-read"
}
