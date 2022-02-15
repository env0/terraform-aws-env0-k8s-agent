variable "cluster_name" {}

variable "cluster_primary_security_group_id" {}
variable "worker_security_group_id" {}
variable "additional_cluster_security_group_id" {}

variable "region" {}

variable "vpc_id" {
  description = "The id of the specific VPC to using"
}

variable "subnets" {}