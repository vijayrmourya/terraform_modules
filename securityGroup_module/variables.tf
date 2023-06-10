variable "securityGroup_Config" {
  type = map(object({
    vpc_id      = string
    name        = string
    description = string
  }))
  default = {}
}