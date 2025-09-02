# env = "dev"
# zone_id                = "33b0e0a5c550ad768189608a60a43082"
# cloudflare_api_token   = "87ZNiv21Oz9wpOT2ih2sQvutXXU2W7CkSi7ozLqV"
# subnet_id = "subnet-00e05b15c4116939b"
# app = {
#   frontend = { name = "frontend", instance_type = "t3.small" }
#   mongodb  = { name = "mongodb", instance_type = "t3.small" }
#   # Add others here
# }
# components = {
#   frontend = {
#     name          = "frontend"
#     instance_type = "t3.small"
#   }
#   # mongodb = {
#   #   name          = "mongodb"
#   #   instance_type = "t3.small"
#   # }
#   # catalogue = {
#   #   name          = "catalogue"
#   #   instance_type = "t3.micro"
#   # }
#   # redis = {
#   #   name          = "redis"
#   #   instance_type = "t3.small"
#   # }
#   # user = {
#   #   name          = "user"
#   #   instance_type = "t3.micro"
#   # }
#   # cart = {
#   #   name          = "cart"
#   #   instance_type = "t3.micro"
#   # }
#   # mysql = {
#   #   name          = "mysql"
#   #   instance_type = "t3.small"
#   # }
#   # shipping = {
#   #   name          = "shipping"
#   #   instance_type = "t3.medium"
#   # }
#   # rabbitmq = {
#   #   name          = "rabbitmq"
#   #   instance_type = "t3.small"
#   # }
#   # payment = {
#   #   name          = "payment"
#   #   instance_type = "t3.small"
#   # }
# }

api_token = "87ZNiv21Oz9wpOT2ih2sQvutXXU2W7CkSi7ozLqV"

components = {
  frontend = {
    name          = "frontend"
    instance_type = "t3.small"
  }
  mongodb = {
    name          = "mongodb"
    instance_type = "t3.small"
  }
  catalogue = {
    name          = "catalogue"
    instance_type = "t3.micro"
  }
}

env       = "dev"
zone_id   = "33b0e0a5c550ad768189608a60a43082"
subnet_id = "subnet-00e05b15c4116939b"
