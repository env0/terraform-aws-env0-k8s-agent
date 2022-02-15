output "kubernetes_host" {
  value       = module.eks.cluster_endpoint
  description = "EKS cluster host endpoint"
}

output "cluster_id" {
  value       = module.eks.cluster_id
  description = "EKS cluster id"
}

output "cluster_primary_security_group_id" {
  value = module.eks.cluster_primary_security_group_id
  description = "EKS primary security group id"
}

output "worker_security_group_id" {
  value = module.eks.worker_security_group_id
  description = "EKS workers security group id"
}

output "additional_cluster_security_group_id" {
  value = module.eks.cluster_security_group_id
  description = "Additional EKS security group id"
}

