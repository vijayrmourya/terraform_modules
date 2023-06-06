variable "rt-igw-internet-association" {
  type = map(object({
    Name                    = string
    vpc-id                  = string
    route                   = object({
      cidr_block = string
      gateway_id = string
    })
  }))
  default = {
    association-1 = {
      Name                    = "terraformDefaultName"
      vpc-id                  = "provided-vpc-id"
      route                   = {
        cidr_block = "0.0.0.0/0"
        gateway_id = "aws_internet_gateway.id"
      }
    }
  }
}

variable "create_association_flag" {
  type = bool
  default = false
}

variable "subnet_rt_association" {
  type = map(object({
    subnet_id      = string
    route_table_id = string
  }))
  default = {
    pub-sub-association-1 = {
      subnet_id      = "aws_subnet.subnet-pub1.id"
      route_table_id = "aws_route_table.routeTable.id"
    }
  }
}
