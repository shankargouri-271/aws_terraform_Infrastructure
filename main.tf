provider "aws" {
  region = var.region
}

# Calling the eks module
module "eks_cluster" {
  source = "./modules/eks"
  region = var.region

  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version
  vpc_id          = var.vpc_id
  subnet_ids      = var.subnet_ids

  node_instance_type = var.node_instance_type
  desired_capacity   = var.desired_capacity
  min_capacity       = var.min_capacity
  max_capacity       = var.max_capacity

  # EKS Add-on versions
  coredns_version     = var.coredns_version
  kube_proxy_version  = var.kube_proxy_version
  vpc_cni_version     = var.vpc_cni_version
}

