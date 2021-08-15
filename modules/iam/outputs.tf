# Generate output of IAM role name
output "iam-instance-profile-name" {
  value       = aws_iam_instance_profile.ec2-admin-role.name
  description = "IAM role name"
}
