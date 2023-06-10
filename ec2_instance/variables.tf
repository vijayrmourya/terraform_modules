variable "ec2Instance_Config" {
  type = map(object({
    subnet_id              = string
    ami                    = string
    instance_type          = string
    user_data_file_path    = string
    key_name               = string
    vpc_security_group_ids = list(string)
    instanceName           = string
  }))
  default = {}
}
