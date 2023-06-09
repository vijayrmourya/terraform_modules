resource "aws_internet_gateway" "igw_module" {
  for_each = var.igw_config
  vpc_id = each.value.vpc_id

  tags = {
    Name   = each.value.Name
    Source = "Terraform"
  }
}
