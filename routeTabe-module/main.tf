resource "aws_route_table" "igw-internet-association" {
  for_each = var.rt-igw-internet-association
  vpc_id   = each.value.vpc-id

  route {
    cidr_block = each.value.route.cidr_block
    gateway_id = each.value.route.gateway_id
  }

  tags = {
    Name   = each.value.Name
    Source = "Terraform"
  }
}

resource "aws_route_table_association" "subnet_subnet_associations" {
  for_each = var.create_association_flag ? var.subnet_rt_association : {}
  subnet_id      = each.value.subnet_id
  route_table_id = each.value.route_table_id
}