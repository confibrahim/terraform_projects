output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = aws_vpc.main.cidr_block
}

output "security_group_id" {
  description = "The ID of the security group"
  value       = aws_security_group.allow_tls.id
}
