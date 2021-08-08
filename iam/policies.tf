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

# Configure IAM role
resource "aws_iam_role" "ec2-admin-role" {
  name                  = "ec2-admin-role"
  path                  = "/admin/"
  assume_role_policy    = data.aws_iam_policy_document.ec2-assume-role.json
  managed_policy_arns   = var.ec2-admin-policy
}
