variable "region" {
  default     = "us-east-1"
  description = "region for the aws"
  type        = string
}

variable "clusterName" {
  default     = "vprofile-cluster"
  description = "cluster name for the aws eks"
  type        = string
}
