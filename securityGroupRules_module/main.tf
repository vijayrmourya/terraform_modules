resource "aws_security_group_rule" "securityGroupRule_module" {
  for_each = var.securityGroupRules_Config
  type              = each.value.type
  from_port         = each.value.from_port
  to_port           = each.value.to_port
  protocol          = each.value.protocol
  cidr_blocks       = each.value.cidr_blocks
  ipv6_cidr_blocks  = each.value.ipv6_cidr_blocks  != null ? each.value.ipv6_cidr_blocks : []
  security_group_id = each.value.security_group_id
}
