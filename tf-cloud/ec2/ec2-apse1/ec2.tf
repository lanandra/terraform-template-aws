# Create EC2 based on module

module "ec2_demo_0" {
  source = "../../modules/ec2-apse1/ec2-ubuntu"

  ec2_tags = {
    Name = "demo-0"
  }
}

module "ec2_demo_1" {
  source = "../../modules/ec2-apse1/ec2-ubuntu-arm"

  ec2_tags = {
    Name = "demo-1"
  }
}
