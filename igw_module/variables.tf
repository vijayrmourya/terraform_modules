variable "igw-config" {
  type = object({
    Name = string
    vpc-id = string
  })
  default = {
    vpc-id = "provide-vpc-id"
    Name   = "simpleInfra-igw"
  }
}
