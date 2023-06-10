variable "ec2Instance_Config" {
  type = map(object({
    subnet_id              = string
    ami                    = string
    instance_type          = string
    key_name               = string
    vpc_security_group_ids = list(string)
    instanceName           = string
  }))
  default = {}
}
