module "s3" {
  source = "../../modules/s3"

  bucket_name = var.bucket_name

  versioning_enabled = true

  force_destroy = false

  tags = {
    Environment = "dev"
    Project     = "terraform-aws-modules-project"
  }
}
