variable "subnet-config" {
  type = map(object({
    Name                 = string
    cidr                 = string
    vpc-id               = string
    availabilityzone     = string
    map_public_ip_on_launch = bool
  }))
  default = {
    def-subnet-1 = {
      Name                 = "terraformDefaultName"
      cidr                 = "10.10.0.0/22"
      vpc-id               = "provided-vpc-id"
      availabilityzone     = "ap-south-1a"
      map_public_ip_on_launch = false
    }
  }
}