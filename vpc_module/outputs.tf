output "vpc_id" {
  value = {for k, vpc in aws_vpc.vpc_module : k => vpc.id}
}

output "vpc_cidr" {
  value = {for k, vpc in aws_vpc.vpc_module : k => vpc.cidr_block}
}