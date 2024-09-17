region             = "us-west-2"
cluster_name       = "dev-eks-cluster"
cluster_version    = "1.24"
vpc_id             = "vpc-0a12bc34d5678efgh"
subnet_ids         = ["subnet-0ab12345c678de9fg", "subnet-0hi12345jk678lmn"]

# Worker node group configurations
node_instance_type = "t3.medium"
desired_capacity   = 2
min_capacity       = 1
max_capacity       = 3

# EKS Add-ons versions
coredns_version    = "v1.8.7-eksbuild.1"
kube_proxy_version = "v1.24.0-eksbuild.2"
vpc_cni_version    = "v1.10.1-eksbuild.1"

