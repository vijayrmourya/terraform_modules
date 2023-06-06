variable "securityRulesConfig" {
  type = map(object({
    is_ipv6 = bool
    type              = string
    from_port         = number
    to_port           = number
    protocol          = string
    cidr_blocks       = list(string)
    ipv6_cidr_blocks  = list(string)
    security_group_id = string
  }))
  default = {
    defaultSG = {
      is_ipv6 = false
      type              = "ingress"
      from_port         = 22
      to_port           = 22
      protocol          = "tcp"
      cidr_blocks       = ["aws_vpc.example.cidr_block"]
      ipv6_cidr_blocks  = ["aws_vpc.example.ipv6_cidr_block"]
      security_group_id = "sg-123456"
    }
  }
}
