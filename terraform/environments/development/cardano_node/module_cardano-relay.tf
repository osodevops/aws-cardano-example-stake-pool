module "cardano_relay" {
  source                 = "https://github.com/osodevops/aws-terraform-module-cardano-stake-pool.git//modules/cardano-relay"
  asg_max_size           = var.relay_instance_count
  asg_desired_capacity   = var.relay_instance_count
  ec2_instance_type      = var.relay_instance_type
  environment            = var.environment
  vpc_name               = var.vpc_name
  node_port              = var.relay_port
  node_root_disk_size    = var.relay_root_disk_size
  common_tags            = var.common_tags
  node_security_group_id = module.cardano_security_groups.relay_sg_id
}
