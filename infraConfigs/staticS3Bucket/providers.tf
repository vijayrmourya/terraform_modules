# Provider Block
provider "aws" {
  profile = module.variables.aws_user_profile
  region  = module.variables.aws_default_region
}

module "variables" {
  source = "../../localModules/global-settings/"
}
