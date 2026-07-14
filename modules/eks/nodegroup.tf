resource "aws_eks_node_group" "this" {

  cluster_name = aws_eks_cluster.this.name

  node_group_name = "${var.cluster_name}-nodes"

  node_role_arn = aws_iam_role.node_role.arn

  subnet_ids = var.subnet_ids

  instance_types = var.instance_types

  ami_type = "AL2023_x86_64_STANDARD"

  scaling_config {

    desired_size = var.desired_size

    min_size = var.min_size

    max_size = var.max_size
  }

  update_config {

    max_unavailable = 1
  }

  labels = {

    role = "worker"
  }

  tags = {

    Environment = "dev"

    Terraform = "true"
  }

  depends_on = [

    aws_iam_role_policy_attachment.worker_node,

    aws_iam_role_policy_attachment.cni,

    aws_iam_role_policy_attachment.ecr
  ]
}
