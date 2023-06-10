resource "tls_private_key" "tls_key_module" {
  for_each = var.ec2_key_config
  algorithm = each.value.algorithm
  rsa_bits  = each.value.rsa_bits
}

resource "aws_key_pair" "ec2_key_pair_module" {
  for_each = var.ec2_key_config
  key_name   = each.value.Key_Name
  public_key = tls_private_key.tls_key_module[each.key].public_key_openssh
}

resource "local_file" "save_private_key_local_module" {
  for_each = var.ec2_key_config
  content         = tls_private_key.tls_key_module[each.key].private_key_pem
  filename        = "${path.module}/../../safe-SEC_STORE/terraform_module_store/${each.value.keyStorePath}"
  file_permission = each.value.file_permission
}