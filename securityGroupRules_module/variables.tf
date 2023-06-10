variable "securityGroupRules_Config" {
  type = map(object({
    type              = string
    from_port         = number
    to_port           = number
    protocol          = string
    cidr_blocks       = list(string)
    ipv6_cidr_blocks  = optional(list(string))
    security_group_id = string
  }))
  default = {}
}
