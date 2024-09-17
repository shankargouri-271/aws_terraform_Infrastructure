variable "region" {
  description = "AWS region"
  type        = string
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "cluster_version" {
  description = "Kubernetes version of the EKS cluster"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for the worker nodes"
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

# EKS Add-ons Versions
variable "coredns_version" {
  description = "Version of CoreDNS add-on"
  type        = string
}

variable "kube_proxy_version" {
  description = "Version of kube-proxy add-on"
  type        = string
}

variable "vpc_cni_version" {
  description = "Version of VPC CNI add-on"
  type        = string
}

