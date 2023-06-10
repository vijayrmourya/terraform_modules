variable "subnet_config" {
  type = map(object({
    Name                    = string
    cidr_block              = string
    vpc_id                  = string
    availabilityzone        = optional(string)
    map_public_ip_on_launch = optional(bool)
  }))
  default = {}
}
