module "s3_bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "~> 5.7"

  bucket = var.bucket_name

  force_destroy = var.force_destroy

  versioning = {
    enabled = var.versioning_enabled
  }

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true

  tags = var.tags
}
