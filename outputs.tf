output "vpc_id" {
  description = "The ID of the VPC"
  value       = try(aws_vpc.this[0].id, null)
}

output "private_subnets" {
  description = "List of IDs of private subnets"
  value       = aws_subnet.private[*].id
}

output "public_subnets" {
  description = "List of IDs of private subnets"
  value       = aws_subnet.public[*].id
}

output "database_subnets" {
  description = "List of IDs of private subnets"
  value       = aws_subnet.database[*].id
}
