resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name
  acl    = var.bucket_acl

  tags = {
    Name = var.bucket_name
    Terraform = true
  }

  versioning {
    enabled = var.bucket_versioning
  }

#   logging {  
#     target_bucket = var.logging_target_bucket
#     target_prefix = var.logging_target_prefix
#   }

#   server_side_encryption_configuration {
#     rule {
#       apply_server_side_encryption_by_default {
#         sse_algorithm = "AES256"
#       }
#     }
#   }
}
