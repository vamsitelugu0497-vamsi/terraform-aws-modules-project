module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 6.0"

  name = var.name

  ami           = var.ami
  instance_type = var.instance_type

  subnet_id = var.subnet_id

  vpc_security_group_ids = var.vpc_security_group_ids

  key_name = var.key_name

  iam_instance_profile = var.iam_instance_profile

  user_data = var.user_data

  tags = var.tags
}
