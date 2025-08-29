bucket = "chowdary-hari"
key    = "test/terraform/dev/terraform.tfstate"
region = "us-east-1"


# terraform {
#   backend "s3" {
#     bucket = "chowdary-hari"
#     key    = "test/terraform/${env}/terraform.tfstate"  # ✅ use env dynamically
#     region = "us-east-1"
#   }
# }
