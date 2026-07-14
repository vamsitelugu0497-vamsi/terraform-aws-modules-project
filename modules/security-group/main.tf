module "security_group" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "~> 5.3"

  name        = var.name
  description = var.description
  vpc_id      = var.vpc_id

  ingress_with_cidr_blocks = var.ingress_with_cidr_blocks

  egress_rules = var.egress_rules

  tags = var.tags
}
