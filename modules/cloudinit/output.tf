output "instance_id" {
  value       = aws_instance.cloudinit.id
  description = "The ID of the cloudinit server instance"
} 