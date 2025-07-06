output "cluster_name" {
  value       = module.eks.cluster_name
  description = "name of the EKS cluster"
}

output "cluster_endpoint" {
  value       = module.eks.cluster_endpoint
  description = "End point of the EKS cluster for connecttivity"
}

output "region" {
  value       = var.region
  description = "EKS cluster region"
}

output "cluster_security_group_id" {
  value       = module.eks.cluster_security_group_id
  description = "Security group ID for the EKS cluster"
}
