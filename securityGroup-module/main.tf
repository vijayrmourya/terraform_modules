resource "aws_security_group" "testInstance-securityGroup" {
  for_each    = var.securityGroupConfig
  vpc_id      = each.value.vpc_id
  name        = each.value.name
  description = each.value.description

  tags = {
    Source = "Terraform"
  }
}