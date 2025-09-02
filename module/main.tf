terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 5"
    }
    aws = {
      source  = "hashicorp/aws"
      version = ">= 6.11.0"
    }
  }
}

resource "aws_instance" "instance" {
  ami                    = data.aws_ami.ami.id
  instance_type          = var.instance_type
  vpc_security_group_ids = [data.aws_security_group.sg.id]
  subnet_id              = var.subnet_id

  instance_market_options {
    market_type = "spot"

    spot_options {
      spot_instance_type             = "persistent"
      instance_interruption_behavior = "stop"
    }
  }

  tags = {
    Name = var.env != "" ? "${var.component_name}-${var.env}" : var.component_name
  }
}

resource "cloudflare_dns_record" "dns" {
  zone_id = var.zone_id
  type    = "A"
  name    = "${var.component_name}-${var.env}.durgasri.in"
  ttl     = 60
  content = var.component_name == "frontend" ? aws_instance.instance.public_ip : aws_instance.instance.private_ip
  proxied = false

  depends_on = [aws_instance.instance]

  lifecycle {
    ignore_changes = [proxiable]
  }
}
