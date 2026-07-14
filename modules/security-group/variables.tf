variable "name" {
  description = "Security Group Name"
  type        = string
}

variable "description" {
  description = "Security Group Description"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "ingress_with_cidr_blocks" {
  description = "Ingress Rules"
  type        = any
  default     = []
}

variable "egress_rules" {
  description = "Egress Rules"
  type        = list(string)
  default     = ["all-all"]
}

variable "tags" {
  description = "Tags"
  type        = map(string)
  default     = {}
}
