# Set outputs
output "ec2_session_key" {
  value = aws_kms_key.ec2_session.arn
}
