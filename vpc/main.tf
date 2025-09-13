module "vpc" {
  source = "git::https://github.com/wavedevops/terraform-modules.git"
  cidr_block = var.cidr_block
  tags             = local.tags
  env              = var.env
}
