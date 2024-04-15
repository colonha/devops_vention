module "ecs" {
  source = "../module/ecs"
  subnets = var.subnets
}

module "rds" {
  source = "../module/rds"
  db_password = var.db_password
  subnets = var.subnets

}

module "vpc" {
  source = "../module/vpc"
}

provider "aws" {
  shared_credentials_files = [var.shared_credentials_files]
  profile                  =  "hfa"
  region                   =  "us-east-1"
}