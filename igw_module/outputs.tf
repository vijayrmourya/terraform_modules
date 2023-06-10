output "igw_id" {
  value = {for k, igw in aws_internet_gateway.igw_module : k => igw.id}
}
