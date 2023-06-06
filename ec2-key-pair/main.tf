resource "tls_private_key" "tls-key" {
  for_each = var.tls_key_options
  algorithm = each.value.algorithm
  rsa_bits  = each.value.rsa_bits
}

resource "aws_key_pair" "ec2-key-pair" {
  for_each = var.tls_key_options
  key_name   = each.value.Key_Name
  public_key = tls_private_key.tls-key[each.key].public_key_openssh
}

resource "local_file" "private_key" {
  for_each = var.tls_key_options
  content         = tls_private_key.tls-key[each.key].private_key_pem
  filename        = each.value.keyStorePath
  file_permission = each.value.file_permission
}