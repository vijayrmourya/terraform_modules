resource "aws_instance" "ec2_instance_module" {
  for_each               = var.ec2Instance_Config
  subnet_id              = each.value.subnet_id
  ami                    = each.value.ami
  instance_type          = each.value.instance_type
  key_name               = each.value.key_name
  vpc_security_group_ids = each.value.vpc_security_group_ids
  tags                   = {
    Name   = each.value.instanceName
    Source = "Terraform"
  }
}