output "securityGroupId" {
  value = {for k, sg in aws_security_group.securityGroup_module : k => sg.id }
}
