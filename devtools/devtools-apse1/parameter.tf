# Create parameters related to DevTools and stored in SSM parameter store
resource "aws_ssm_parameter" "codebuild_yourname_dockerhub_username" {
  name  = "/CodeBuild/yourname/DOCKERHUB_USERNAME"
  type  = "String"
  value = "change_me"

  lifecycle {
    ignore_changes = [
      value
    ]
  }
}

resource "aws_ssm_parameter" "codebuild_yourname_dockerhub_password" {
  name  = "/CodeBuild/yourname/DOCKERHUB_PASSWORD"
  type  = "SecureString"
  value = "change_me"

  lifecycle {
    ignore_changes = [
      value
    ]
  }
}

resource "aws_ssm_parameter" "codebuild_aws_region_apse1" {
  name  = "/CodeBuild/aws/REGION_APSE1"
  type  = "String"
  value = "change_me"

  lifecycle {
    ignore_changes = [
      value
    ]
  }
}

resource "aws_ssm_parameter" "codebuild_yourname_aws_account_id" {
  name  = "/CodeBuild/yourname/AWS_ACCOUNT_ID"
  type  = "String"
  value = "change_me"

  lifecycle {
    ignore_changes = [
      value
    ]
  }
}
