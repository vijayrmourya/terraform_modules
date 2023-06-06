resource "aws_subnet" "simpleInfra-subnet-pub1" {
  for_each                = var.subnet-config
  vpc_id                  = each.value.vpc-id
  cidr_block              = each.value.cidr
  map_public_ip_on_launch = each.value.map_public_ip_on_launch
  availability_zone       = each.value.availabilityzone

  tags = {
    Name   = each.value.Name
    Source = "Terraform"
  }
}