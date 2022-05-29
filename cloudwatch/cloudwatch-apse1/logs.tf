# Create cloudwatch logs group
resource "aws_cloudwatch_log_group" "ec2_session_logs" {
  name              = "ec2-session-logs"
  retention_in_days = "14"
  kms_key_id        = data.terraform_remote_state.kms_ap_southeast_1.outputs.ec2_session_key

  tags = {
    Name  = "ec2-session-logs"
    Owner = "Luthfi"
  }
}
