# Configuration related to IAM policies

resource "aws_iam_user_policy" "ssm_user" {
  name = "ssm-user"
  user = aws_iam_user.ssm_user.name

  policy = file("./json-policies/ssm-user.json")
}

resource "aws_iam_role_policy" "ec2_admin" {
  name = "ec2-admin"
  role = aws_iam_role.ec2_admin.id

  policy = file("./json-policies/ec2-admin.json")
}
