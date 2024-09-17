provider "aws" {
  region = var.region
}

module "eks_cluster" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version
  vpc_id          = var.vpc_id
  subnet_ids      = var.subnet_ids

  # Worker Nodes (Node Group)
  node_groups = {
    eks_nodes = {
      desired_capacity = var.desired_capacity
      max_capacity     = var.max_capacity
      min_capacity     = var.min_capacity
      instance_type    = var.node_instance_type
    }
  }

  manage_aws_auth = true  # Allows Terraform to manage aws-auth ConfigMap

  # EKS Add-ons
  eks_addons = {
    coredns = {
      addon_name               = "coredns"
      addon_version            = var.coredns_version
      resolve_conflicts        = "OVERWRITE"
      service_account_role_arn = null
    }

    kube_proxy = {
      addon_name               = "kube-proxy"
      addon_version            = var.kube_proxy_version
      resolve_conflicts        = "OVERWRITE"
      service_account_role_arn = null
    }

    vpc_cni = {
      addon_name               = "vpc-cni"
      addon_version            = var.vpc_cni_version
      resolve_conflicts        = "OVERWRITE"
      service_account_role_arn = null
    }
  }
}

