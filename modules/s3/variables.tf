variable "bucket_name" {
  type = string
  default = "main-bucket"
}

variable "bucket_acl" {
  type = string
  default = "private"
}

variable "bucket_versioning" {
    type = bool
    default = false
}