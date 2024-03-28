#hashicorp aws
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.42.0"
    }
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
    /*shell = {
      source  = "scottwinkler/shell"
      version = "1.7.10"
    }*/
  }
}

provider "aws" {
  region = "us-east-2"
}
