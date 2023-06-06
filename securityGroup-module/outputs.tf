output "securityGroupId" {
  value = {for k, sg in aws_security_group.testInstance-securityGroup : k => sg.id }
}
