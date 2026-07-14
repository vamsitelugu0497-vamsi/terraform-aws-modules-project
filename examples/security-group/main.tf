module "security_group" {
  source = "../../modules/security-group"

  name        = "web-sg"
  description = "Security Group for Web Server"

  vpc_id = var.vpc_id

  ingress_with_cidr_blocks = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      description = "SSH"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      description = "HTTP"
      cidr_blocks = "0.0.0.0/0"
    }
  ]

  egress_rules = ["all-all"]

  tags = {
    Environment = "dev"
    Project     = "terraform-aws-modules-project"
  }
}
