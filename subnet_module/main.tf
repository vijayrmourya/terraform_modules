resource "aws_subnet" "subnet_module" {
  for_each                = var.subnet_config
  vpc_id                  = each.value.vpc_id
  cidr_block              = each.value.cidr_block
  map_public_ip_on_launch = each.value.map_public_ip_on_launch  != null ? each.value.map_public_ip_on_launch : null
  availability_zone       = each.value.availabilityzone  != null ? each.value.availabilityzone : null

  tags = {
    Name   = each.value.Name
    Source = "Terraform"
  }
}