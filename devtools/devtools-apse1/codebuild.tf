# Create CodeBuild project from module
module "your_module_name" {
  source = "../../modules/devtools/codebuild-github-dockerhub/"

  project_name          = "your-project-name"
  github_repository_url = "https://github.com/youraccount/yourrepository.git"
  source_version        = "main"
  build_image           = "aws/codebuild/standard:6.0"

  dockerhub_username_value = "/CodeBuild/yourname/DOCKERHUB_USERNAME"
  dockerhub_password_value = "/CodeBuild/yourname/DOCKERHUB_PASSWORD"
  aws_default_region_value = "/CodeBuild/aws/REGION_APSE1"
  aws_account_id_value     = "/CodeBuild/yourname/AWS_ACCOUNT_ID"
  image_tag_version_value  = "v0.1.0"
  image_repo_name_value    = "youraccount/yourrepository"

  project_tags = {
    Name        = "your-project-name"
    Environment = "your-environment"
    Owner       = "your-owner"
  }
}
