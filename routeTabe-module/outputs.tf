output "public_route_table" {
  value = {for k, rt in aws_route_table.igw-internet-association : k => rt.id}
}

#output "rt_associations" {
#  value = aws_route_table_association.subnet_subnet_associations
#}