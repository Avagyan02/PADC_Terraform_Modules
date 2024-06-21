variable "bucket_name" {
  type        = string
}

variable "bucket_versioning" {
  type        = bool
}

variable "bucket_encryption_type" {
  type        = string
}

variable "static_website_index_key" {
  type = string
}

variable "static_website_error_key" {
  type = string
}

variable "static_website_index_source" {
  type = string
}

variable "static_website_error_source" {
  type = string
}

variable "static_website_index_acl" {
  type = string
}

variable "static_website_error_acl" {
  type = string
}

variable "static_website_file_acl" {
  type = string
}

variable "files_to_upload" {
  type        = list(string)
}

variable "cf_origin_access_identity" {
  type = string
}