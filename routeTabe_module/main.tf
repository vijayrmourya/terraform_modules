resource "aws_route_table" "route_table_module" {
  for_each = var.route_table_config
  vpc_id = each.value.vpc_id

  tags = {
    Name   = each.value.Name
    Source = "Terraform"
  }
}
