variable "aws_region" {
  description = "Name of the AWS region you are deploying to"
  type        = string
}

variable "environment" {
  description = "Name of the environment we are deploying Tableau into. e.g. 'stage'"
  type        = string
}

variable "vpc_name" {
  description = "Name of the VPC we will deploy into"
  type        = string
}

variable "common_tags" {
  description = "Map of tags that will be applied to all infrastructure created by the Tableau module"
  type        = map(string)
}

variable "relay_instance_count" {
  description = "Number of relay nodes to create"
  type        = number
  default     = 1
}

variable "relay_instance_type" {
  description = "Type of instance for the relay nodes"
  type        = string
  default     = "t3.small"
}

variable "relay_port" {
  description = "The port the relay will use for communications"
  type        = string
  default     = "3000"
}

variable "relay_root_disk_size" {
  description = "Size in GB of the root partition of relay instances"
  type        = number
  default     = 40
}

variable "core_instance_count" {
  description = "Number of core nodes to create"
  type        = number
  default     = 1
}

variable "core_instance_type" {
  description = "AWS instance type used for core nodes"
  type        = string
  default     = "t3.small"
}

variable "core_port" {
  description = "The port the core nodes will use for communications"
  type        = string
  default     = "3000"
}

variable "core_root_disk_size" {
  description = "Size in GB of the root partition of core instances"
  type        = number
  default     = 40
}
