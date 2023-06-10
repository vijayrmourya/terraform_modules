output "route_table_id" {
  value = {for k, rt in aws_route_table.route_table_module : k => rt.id}
}
