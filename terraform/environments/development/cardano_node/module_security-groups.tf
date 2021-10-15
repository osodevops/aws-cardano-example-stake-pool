module "cardano_security_groups" {
  source          = "https://github.com/osodevops/aws-terraform-module-cardano-stake-pool.git//modules/security-groups"
  core_node_port  = var.core_port
  relay_node_port = var.relay_port
  vpc_name        = var.vpc_name
  environment     = var.environment
}
