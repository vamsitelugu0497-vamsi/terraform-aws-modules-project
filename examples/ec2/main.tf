module "ec2" {
  source = "../../modules/ec2"

  name = "demo-ec2"

  ami           = var.ami
  instance_type = var.instance_type

  subnet_id = var.subnet_id

  vpc_security_group_ids = [
    var.security_group_id
  ]

  key_name = var.key_name

  tags = {
    Environment = "dev"
    Project     = "terraform-aws-modules-project"
  }
}
