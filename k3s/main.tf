# Configure the AWS Provider
provider "aws" {
  version = "~> 2.0"
  region  = var.region
}

module "aws_infrastructure" {
  source = "./aws"

  db_password = var.db_password
  db_username = var.db_username
  keypair_name = var.keypair_name
  key_s3_bucket_name = var.key_s3_bucket_name

  k3s_server_count = var.k3s_server_count
  k3s_agent_count = var.k3s_agent_count

  k3s_server_size = var.k3s_server_size
  k3s_agent_size = var.k3s_agent_size

  configure_aws_provider = var.configure_aws_provider

  cluster_name = var.cluster_name
}