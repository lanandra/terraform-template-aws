/*
Create codebuild project with GitHub repository as source
Environment intended to use with Dockerhub as build destination
*/
resource "aws_codebuild_project" "github_project" {
  name = var.project_name
  tags = var.project_tags

  source {
    type     = "GITHUB"
    location = var.github_repository_url
  }

  source_version = var.source_version

  environment {
    image           = var.build_image
    type            = var.environment_type
    compute_type    = var.compute_type
    privileged_mode = var.priveleged

    environment_variable {
      name  = "DOCKERHUB_USERNAME"
      type  = "PARAMETER_STORE"
      value = var.dockerhub_username_value
    }

    environment_variable {
      name  = "DOCKERHUB_PASSWORD"
      type  = "PARAMETER_STORE"
      value = var.dockerhub_password_value
    }

    environment_variable {
      name  = "AWS_DEFAULT_REGION"
      type  = "PARAMETER_STORE"
      value = var.aws_default_region_value
    }

    environment_variable {
      name  = "AWS_ACCOUNT_ID"
      type  = "PARAMETER_STORE"
      value = var.aws_account_id_value
    }

    environment_variable {
      name  = "IMAGE_TAG_VERSION"
      type  = "PLAINTEXT"
      value = var.image_tag_version_value
    }

    environment_variable {
      name  = "IMAGE_REPO_NAME"
      type  = "PLAINTEXT"
      value = var.image_repo_name_value
    }
  }

  service_role = var.codebuild_service_role_arn

  artifacts {
    type = var.artifact_type
  }
}
