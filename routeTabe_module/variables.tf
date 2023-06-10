variable "route_table_config" {
  type = map(object({
    Name                    = string
    vpc_id                  = string
  }))
  default = {}
}
