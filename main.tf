resource "aws_iam_user" "user" {
  name = var.name
  tags = {
    tag-key = var.name
  }
}

