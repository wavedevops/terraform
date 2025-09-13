module "vpc" {
  source = "git::https://github.com/wavedevops/terraform-modules.git"
  for_each   = var.vpc
  cidr_block = var.cidr_block
  tags             = local.tags
  env              = var.env
  subnets    = each.value["subnets"]
}
