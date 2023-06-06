output "subnet-id" {
  description = "output: vpc-id = {\"vpc-1\" = \"vpc-xxxxxxxxxxxxx\", \"vpc-2\" = \"vpc-xxxxxxxxxxxxx\"}"
  value = {for k, subnet in aws_subnet.simpleInfra-subnet-pub1 : k => subnet.id}
}