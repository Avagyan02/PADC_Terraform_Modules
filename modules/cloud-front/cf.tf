resource "aws_cloudfront_distribution" "my_distribution" {
  origin {
    domain_name = var.s3_bucket_domain
    origin_id   = var.cf_origin
  }

  enabled             = var.cf_enabled
  default_root_object = var.cf_default_root_object

  default_cache_behavior {
    target_origin_id   = var.cf_origin
    viewer_protocol_policy = var.cf_viewer_protocol_policy

    forwarded_values {
      query_string = var.cf_query_string

      cookies {
        forward = var.cf_cookies_forward
      }
    }

    allowed_methods = var.cf_allowed_methods
    cached_methods = var.cf_cached_methods

    min_ttl = var.cf_min_ttl
    default_ttl = var.cf_default_ttl
    max_ttl = var.cf_max_ttl
  }

  restrictions {
    geo_restriction {
       restriction_type = var.cf_restriction_type
    }
  }

  viewer_certificate {
    cloudfront_default_certificate = var.cf_cloudfront_default_certificate
  }

  tags = {
    Terraform = true
  }
}