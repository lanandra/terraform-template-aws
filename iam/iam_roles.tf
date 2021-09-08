# Generate assume role policy
data "aws_iam_policy_document" "ec2-assume-role" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }
  }
}

# Configure IAM instance profile
resource "aws_iam_instance_profile" "ec2-admin-role" {
  name = var.iam-role-name
  role = aws_iam_role.ec2-admin-role.name
}

# Configure IAM role
resource "aws_iam_role" "ec2-admin-role" {
  name                = var.iam-role-name
  path                = var.iam-role-path
  assume_role_policy  = data.aws_iam_policy_document.ec2-assume-role.json
  managed_policy_arns = var.iam-role-policy-attachment
}
