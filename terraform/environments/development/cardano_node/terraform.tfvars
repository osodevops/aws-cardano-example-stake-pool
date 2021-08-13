# Account and VPC configuration
aws_region  = "<AWS REGION>"
environment = "<ENVIRONMENT NAME>"
vpc_name    = "<VPC NAME>"
common_tags = {
  Application = "Cardano"
  Tool        = "Terraform"
}

relay_instance_count = 1
relay_instance_type  = "t3.small"
relay_port           = 3000
relay_root_disk_size = 40

core_instance_count = 1
core_instance_type  = "t3.small"
core_port           = 3000
core_root_disk_size = 40
