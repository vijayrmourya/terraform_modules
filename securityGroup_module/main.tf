resource "aws_security_group" "securityGroup_module" {
  for_each    = var.securityGroup_Config
  vpc_id      = each.value.vpc_id
  name        = each.value.name
  description = each.value.description

  tags = {
    Source = "Terraform"
  }
}