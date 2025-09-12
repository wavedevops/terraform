module "vpc" {
  source = "git::https://github.com/wavedevops/terraform-modules.git"
  cidr_block = var.cidr_block
  env = var.env
}