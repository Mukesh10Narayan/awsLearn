provider "aws" {
  region = var.region
}

resource "aws_ecr_repository" "my_ecr" {
  name = var.ecr_name
}
