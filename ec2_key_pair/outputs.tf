output "ec2_key_pair_name" {
  value = { for k, key_ in aws_key_pair.ec2_key_pair_module : k => key_.key_name }
}

output "local_key_path" {
  value = { for k, key_ in local_file.save_private_key_local_module : k => key_.filename }
}