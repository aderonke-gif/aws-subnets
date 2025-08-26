variable "region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "eu-west-1"
}

variable "vpc_id" {
  description = "The ID of the VPC to deploy subnets into"
  type        = string
}

variable "subnet_cidrs" {
  description = "List of CIDR blocks for the subnets"
  type        = list(string)
}

variable "azs" {
  description = "List of Availability Zones for each subnet"
  type        = list(string)
}

variable "map_public_ip_on_launch" {
  description = "Whether to assign a public IP to instances launched in the subnet"
  type        = bool
  default     = false
}

variable "name_prefix" {
  description = "Prefix to use for naming subnets"
  type        = string
}

variable "tags" {
  description = "Tags to apply to subnets"
  type        = map(string)
  default     = {}
}
