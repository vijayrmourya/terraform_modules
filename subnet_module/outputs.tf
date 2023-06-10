output "subnet_id" {
  value = {for k, subnet in aws_subnet.subnet_module : k => subnet.id}
}

output "subnet_cidr" {
  value = {for k, subnet in aws_subnet.subnet_module : k => subnet.cidr_block}
}