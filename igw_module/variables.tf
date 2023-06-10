variable "igw_config" {
  type = map(object({
    Name   = string
    vpc_id = string
  }))
  default = {}
}