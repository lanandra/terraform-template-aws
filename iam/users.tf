# Create user for ssm session
resource "aws_iam_user" "ssm-user" {
  name          = "ssm-user"
  path          = "/"
  force_destroy = true

  tags = {
    "Name" = "ssm-user"
  }
}
