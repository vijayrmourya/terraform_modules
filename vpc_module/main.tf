resource "aws_vpc" "simpleInfra-vpc" {
  for_each = var.vpc-config
  cidr_block           = each.value.cidr
  instance_tenancy     = each.value.instance_tenancy
  enable_dns_hostnames = each.value.enable_dns_hostnames

  tags = {
    Name = each.value.Name
    Source = "Terraform"
  }
}