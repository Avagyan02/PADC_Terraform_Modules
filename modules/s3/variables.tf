variable "bucket_name" {
  description = "S3 bucket name"
  type        = string
  default     = "main-bucket-2"
}

variable "bucket_versioning" {
  description = "S3 bucket versioning on or off"
  type        = bool
  default     = false
}

variable "bucket_encryption_type" {
  description = "S3 bucket ecnryption type"
  type        = string
  default     = "AES256"
}