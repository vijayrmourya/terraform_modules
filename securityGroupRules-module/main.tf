resource "aws_security_group_rule" "example" {
  for_each = var.securityRulesConfig
  type              = each.value.type
  from_port         = each.value.from_port
  to_port           = each.value.to_port
  protocol          = each.value.protocol
  cidr_blocks       = each.value.cidr_blocks
  ipv6_cidr_blocks  = each.value.is_ipv6 ? each.value.ipv6_cidr_blocks : []
  security_group_id = each.value.security_group_id
}
