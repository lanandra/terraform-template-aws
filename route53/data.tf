# Get terraform state from other workspaces
data "terraform_remote_state" "your_s3_workspace" {
  backend = "remote"

  config = {
    organization = "your-organization"
    workspaces = {
      name = "your-s3-workspace"
    }
  }
}