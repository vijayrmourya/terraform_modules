resource "aws_vpc" "vpc_module" {
  for_each = var.vpc_config

  cidr_block                           = each.value.cidr_block
  instance_tenancy                     = each.value.instance_tenancy != null ? each.value.instance_tenancy : null
  enable_dns_hostnames                 = each.value.enable_dns_hostnames != null ? each.value.enable_dns_hostnames : null
  enable_network_address_usage_metrics = each.value.enable_network_address_usage_metrics != null ? each.value.enable_network_address_usage_metrics : null

  tags = {
    Name   = each.value.Name
    Source = "Terraform"
  }
}
