variable "vpc_config" {
  type = map(object({
    Name                                 = string
    cidr_block                           = string
    instance_tenancy                     = optional(string)
    enable_network_address_usage_metrics = optional(bool)
    enable_dns_hostnames                 = optional(bool)
  }))
  default = {}
}