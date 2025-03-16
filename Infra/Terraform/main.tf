provider "aws" {
  region = "us-east-1"  # Replace with your preferred region
}
 
# Create an ECR repository
resource "aws_ecr_repository" "my_ecr_repo" {
  name = "my-ecr-repo"  # Replace with your desired ECR repository name
}
 
# Create an EKS cluster
# module "eks" {
#   source  = "terraform-aws-modules/eks/aws"
#   version = "~> 19.0"
 
#   cluster_name    = "my-eks-cluster"  # Replace with your desired EKS cluster name
#   cluster_version = "1.27"
 
#   vpc_id          = module.vpc.vpc_id
#   subnet_ids      = module.vpc.private_subnets
 
#   eks_managed_node_groups = {
#     default = {
#       min_size     = 1
#       max_size     = 3
#       desired_size = 2
 
#       instance_types = ["t3.medium"]
#     }
#   }
# }
 
# # Create a VPC for the EKS cluster
# module "vpc" {
#   source  = "terraform-aws-modules/vpc/aws"
#   version = "~> 3.0"
 
#   name = "my-vpc"
# cidr = "10.0.0.0/16"
 
#   azs             = ["us-east-1a", "us-east-1b"]
# private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
# public_subnets = ["10.0.101.0/24", "10.0.102.0/24"]
 
#   enable_nat_gateway = true
#   single_nat_gateway = true
# }
 
# Outputs
output "ecr_repository_url" {
  value = aws_ecr_repository.my_ecr_repo.repository_url
}
 
# output "eks_cluster_name" {
#   value = module.eks.cluster_name
# }
 
# output "kubeconfig" {
#   value = module.eks.kubeconfig
# }