# terraform-modules

Project showcasing different module based terraform aws resource provisioning \

------------
$ terraform init -upgrade \
$ terraform plan \
$ terraform apply --auto-approve
-------------

- [localModules](localModules): stores all the local module configurations for the project
  - [global-settings](localModules%2Fglobal-settings): Terraform provider and common variables setting for the entire project
  - [s3-static-website-module](localModules%2Fs3-static-website-module): configuration to create a s3 bucket which can host static website
- [infraConfigs](infraConfigs): Infrastructures configured using the Local and hosted modules
  - [staticS3Bucket](infraConfigs%2FstaticS3Bucket): config files for the static website created using local s3 module
