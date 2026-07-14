resource "aws_eks_cluster" "this" {

  name = var.cluster_name

  version = var.cluster_version

  role_arn = aws_iam_role.eks_cluster_role.arn

  vpc_config {

    subnet_ids = var.subnet_ids

    endpoint_public_access = true
  }

  depends_on = [

    aws_iam_role_policy_attachment.cluster_policy
  ]
}
