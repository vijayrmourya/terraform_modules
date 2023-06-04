variable "http-api-name" {
  default = "example-http-api"
}

variable "api_stages" {
  type = map(object({
    name         = string
    auto_deploy  = bool
  }))
  default = {
    dev = {
      name        = "dev"
      auto_deploy = true
    }
    test = {
      name        = "test"
      auto_deploy = true
    }
    prod = {
      name        = "prod"
      auto_deploy = false
    }
  }
}