variable "bucket_name" {
  description = "S3 Bucket Name"
  type        = string
}

variable "versioning_enabled" {
  description = "Enable bucket versioning"
  type        = bool
  default     = true
}

variable "force_destroy" {
  description = "Delete bucket even if it contains objects"
  type        = bool
  default     = false
}

variable "tags" {
  description = "Tags"
  type        = map(string)
  default     = {}
}
