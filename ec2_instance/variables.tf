variable "securityGroupConfig" {
  type = map(object({
    subnet_id     = string
    ami           = string
    instance_type = string
    user_data_file_path     = string
    key_name      = string
    vpc_security_group_ids = list(string)
  }))
  default = {
    instance_example = {
      subnet_id     = ""
      ami           = ""
      instance_type = ""
      user_data_file_path     = ""
      key_name      = ""
      vpc_security_group_ids = []
    }
  }
}