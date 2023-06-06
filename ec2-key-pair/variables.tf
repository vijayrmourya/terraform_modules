variable "tls_key_options" {
  type = map(object({
    algorithm       = string
    rsa_bits        = number
    Key_Name        = string
    keyStorePath    = string
    file_permission = string
  }))
  default = {
    key-1 = {
      algorithm = "RSA"
      rsa_bits  = 4096
      Key_Name = "terraformDefaultName"
      keyStorePath = "/../../safe-SEC_STORE/testinstances/server-private-key/default_server_key.pem"
      file_permission = "0600"
    }
  }
}