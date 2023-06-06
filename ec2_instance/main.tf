resource "aws_instance" "ec2_instances-pub1" {
  subnet_id              = aws_subnet.simpleInfra-subnet-pub1.id
  ami                    = "ami-07ffb2f4d65357b42"
  instance_type          = "t3.medium"
  user_data              = file("${path.module}/testConfig.sh")
  key_name               = aws_key_pair.ec2-key-pair.key_name
  vpc_security_group_ids = [aws_security_group.testInstance-securityGroup.id]
  tags                   = {
    Name   = "simpleInfra-instance"
    Source = "Terraform"
  }
}