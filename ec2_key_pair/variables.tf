variable "ec2_key_config" {
  type = map(object({
    algorithm       = string
    rsa_bits        = number
    Key_Name        = string
    keyStorePath    = string
    file_permission = string
  }))
  default = {}
}