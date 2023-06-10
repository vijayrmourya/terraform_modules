output "instance_public_ip" {
  value = { for k, instance in aws_instance.ec2_instance_module : k => instance.public_ip }
}

output "instance_public_dns" {
  value = { for k, instance in aws_instance.ec2_instance_module : k => instance.public_dns }
}

output "instance_id" {
  value = { for k, instance in aws_instance.ec2_instance_module : k => instance.id }
}
