# Create EC2 based on module

# ec2 demo ubuntu in private subnet
module "demo_ubuntu_private" {
  source = "../../modules/ec2-ubuntu"
  count  = 1

  associate_public_ip = false
  vpc_security_group  = data.terraform_remote_state.vpc_ap_southeast_1.outputs.sec_group_demo_private_apse1_0
  vpc_subnet          = data.terraform_remote_state.vpc_ap_southeast_1.outputs.subnet_private_apse1_0

  ec2_tags = {
    Name = "demo-ubuntu-private-${count.index}"
  }
}
