module "servers" {
  for_each = var.components
  source   = "module"
  component_name = each.value["name"]
  env            = var.env
  instance_type  = each.value["instance_type"]
  zone_id        = var.zone_id
  subnet_id      = var.subnet_id

  providers = {
    aws        = aws
    cloudflare = cloudflare
  }
}
