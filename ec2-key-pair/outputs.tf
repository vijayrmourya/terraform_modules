output "ec2_key_pair_name" {
  value = { for k, key_ in aws_key_pair.ec2-key-pair : k => key_ }
}