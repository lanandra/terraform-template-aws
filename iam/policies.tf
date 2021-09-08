/*
Policy for ssm-user
Policy is referred from json file with full access to all sessions
*/
resource "aws_iam_user_policy" "ssm-user" {
  name = "ssm-user"
  user = aws_iam_user.ssm-user.name

  policy = file("./json-policies/ssm-user.json")
}
