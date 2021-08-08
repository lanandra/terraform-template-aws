# Generate output of IAM role name
output "iam_role_name" {
  value       = aws_iam_role.ec2-admin-role.id
  description = "IAM role name"
}
