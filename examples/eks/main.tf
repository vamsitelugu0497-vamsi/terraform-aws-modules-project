########################################
# Read VPC Terraform State
########################################

data "terraform_remote_state" "vpc" {
  backend = "local"

  config = {
    path = "../vpc/terraform.tfstate"
  }
}

########################################
# EKS Module
########################################

module "eks" {
  source = "../../modules/eks"

  cluster_name    = "terraform-eks"
  cluster_version = "1.33"

  subnet_ids = data.terraform_remote_state.vpc.outputs.private_subnets

  instance_types = ["c7i-flex.large"]

  desired_size = 2
  min_size     = 2
  max_size     = 3
}
