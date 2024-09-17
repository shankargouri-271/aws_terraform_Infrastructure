variable "region" {
  description = "AWS region for EKS cluster"
  type        = string
}

variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
}

variable "cluster_version" {
  description = "Kubernetes version for EKS"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID for EKS cluster"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for worker nodes"
  type        = list(string)
}

variable "node_instance_type" {
  description = "Instance type for worker nodes"
  type        = string
}

variable "desired_capacity" {
  description = "Desired number of worker nodes"
  type        = number
}

variable "min_capacity" {
  description = "Minimum number of worker nodes"
  type        = number
}

variable "max_capacity" {
  description = "Maximum number of worker nodes"
  type        = number
}

# EKS Add-on versions
variable "coredns_version" {
  description = "CoreDNS add-on version"
  type        = string
}

variable "kube_proxy_version" {
  description = "kube-proxy add-on version"
  type        = string
}

variable "vpc_cni_version" {
  description = "VPC CNI add-on version"
  type        = string
}

