output "website_url" {
  value = aws_s3_bucket.main.website_endpoint
}

output "bucket_regional_domain" {
  value = aws_s3_bucket.main.bucket_regional_domain_name
}