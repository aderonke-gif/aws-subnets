output "subnet_ids" {
  description = "IDs of the created subnets"
  value       = [for s in aws_subnet.this : s.id]
}

output "subnet_cidr_blocks" {
  description = "CIDR blocks of the created subnets"
  value       = [for s in aws_subnet.this : s.cidr_block]
}

output "subnet_azs" {
  description = "Availability Zones of the subnets"
  value       = [for s in aws_subnet.this : s.availability_zone]
}
