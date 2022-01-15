# Get terraform state from vpc-ap-southeast-1 workspace
data "terraform_remote_state" "vpc_ap_southeast_1" {
  backend = "remote"

  config = {
    organization = "your organization"
    workspaces = {
      name = "your vpc workspace"
    }
  }
}