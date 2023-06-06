variable "securityGroupConfig" {
  type = map(object({
    vpc_id      = string
    name        = string
    description = string
  }))
  default = {
    defaultSG = {
      vpc_id      = "aws_vpc.vpc.id"
      name        = "terraformDefaultName"
      description = "created by terraform security group module"
    }
  }
}