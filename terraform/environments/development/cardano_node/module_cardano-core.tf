module "cardano_core" {
  source                 = "https://github.com/osodevops/aws-terraform-module-cardano-stake-pool.git//modules/cardano-core"
  asg_max_size           = var.core_instance_count
  asg_desired_capacity   = var.core_instance_count
  ec2_instance_type      = var.core_instance_type
  environment            = var.environment
  vpc_name               = var.vpc_name
  node_port              = var.core_port
  node_root_disk_size    = var.core_root_disk_size
  common_tags            = var.common_tags
  node_security_group_id = module.cardano_security_groups.core_sg_id
}
