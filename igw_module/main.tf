resource "aws_internet_gateway" "simpleInfra-igw" {
  vpc_id = var.igw-config.vpc-id

  tags = {
    Name   = "simpleInfra-igw"
    Source = "Terraform"
  }
}
