variable "vpc-config" {
  type = map(object({
    Name                 = string
    cidr                 = string
    instance_tenancy     = string
    enable_dns_hostnames = bool
  }))
  default = {
    vpc-1 = {
      Name                 = "terraformDefaultName"
      cidr                 = "10.10.0.0/20"
      instance_tenancy     = "default"
      enable_dns_hostnames = true
    }
  }
}