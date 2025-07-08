terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.95.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.5.1"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "~> 3.0.0"
    }

    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "~> 2.0.0"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.23.0"
    }

  }

  backend "s3" {
    bucket         = "eks-iaas-vprofile-project"
    key            = "eks/terraform.tfstate"
    region         = "eu-north-1"
    dynamodb_table = "vprofile-terraform-lock"

  }

  required_version = ">= 1.6.0"
}
