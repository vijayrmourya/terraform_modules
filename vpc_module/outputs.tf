output "vpc-id" {
  description = "output: vpc-id = {\"vpc-1\" = \"vpc-xxxxxxxxxxxxx\", \"vpc-2\" = \"vpc-xxxxxxxxxxxxx\"}"
  value = {for k, vpc in aws_vpc.simpleInfra-vpc : k => vpc.id}
}