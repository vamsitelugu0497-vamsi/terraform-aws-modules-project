variable "cluster_name" {}

variable "cluster_version" {}

variable "subnet_ids" {
  type = list(string)
}

variable "instance_types" {
  type = list(string)
}

variable "desired_size" {}

variable "min_size" {}

variable "max_size" {}
