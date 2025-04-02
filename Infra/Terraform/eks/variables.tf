variable "region" {
  description = "The AWS region to create the ECR in"
  type        = string
}

variable "ecr_name" {
  description = "The name of the ECR repository"
  type        = string
}
