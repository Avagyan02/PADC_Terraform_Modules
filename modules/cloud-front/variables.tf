variable "s3_bucket_domain" {
  type = string
}

variable "cf_origin" {
  type = string
}

variable "cf_enabled" {
  type = bool
}

variable "cf_default_root_object" {
  type = string
}

variable "cf_viewer_protocol_policy" {
  type = string
}

variable "cf_query_string" {
  type = bool
}

variable "cf_cookies_forward" {
  type = string
}

variable "cf_allowed_methods" {
  type = list(string)
}

variable "cf_cached_methods" {
  type = list(string)
}

variable "cf_min_ttl" {
  type = number
}

variable "cf_max_ttl" {
  type = number
}

variable "cf_default_ttl" {
  type = number
}

variable "cf_restriction_type" {
  type = string
}

variable "cf_cloudfront_default_certificate" {
  type = bool
}