variable "name" {
  description = "EC2 Instance Name"
  type        = string
}

variable "ami" {
  description = "AMI ID"
  type        = string
}

variable "instance_type" {
  description = "EC2 Instance Type"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID"
  type        = string
}

variable "vpc_security_group_ids" {
  description = "Security Group IDs"
  type        = list(string)
}

variable "key_name" {
  description = "EC2 Key Pair"
  type        = string
  default     = null
}

variable "iam_instance_profile" {
  description = "IAM Instance Profile"
  type        = string
  default     = null
}

variable "user_data" {
  description = "User Data"
  type        = string
  default     = null
}

variable "tags" {
  description = "Tags"
  type        = map(string)
  default     = {}
}
