# Get terraform state from other workspaces
data "terraform_remote_state" "your_kms_workspace" {
  backend = "remote"

  config = {
    organization = "your-organization"
    workspaces = {
      name = "your-kms-workspace"
    }
  }
}
