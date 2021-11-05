# Configuration related to IAM users

resource "aws_iam_user" "ssm_user" {
  name          = "ssm-user"
  path          = "/"
  force_destroy = true

  tags = {
    "Name" = "ssm-user"
  }
}
