# Set outputs
output "subnet_staging_public_a_0" {
  value = module.vpc_staging.subnet_staging_public_a[0]
}

output "subnet_staging_public_b_0" {
  value = module.vpc_staging.subnet_staging_public_b[0]
}

output "subnet_staging_public_c_0" {
  value = module.vpc_staging.subnet_staging_public_c[0]
}

output "subnet_staging_private_a_0" {
  value = module.vpc_staging.subnet_staging_private_a[0]
}

output "subnet_staging_private_b_0" {
  value = module.vpc_staging.subnet_staging_private_b[0]
}

output "subnet_staging_private_c_0" {
  value = module.vpc_staging.subnet_staging_private_c[0]
}

output "subnet_production_public_a_0" {
  value = module.vpc_production.subnet_production_public_a[0]
}

output "subnet_production_public_b_0" {
  value = module.vpc_production.subnet_production_public_b[0]
}

output "subnet_production_public_c_0" {
  value = module.vpc_production.subnet_production_public_c[0]
}

output "subnet_production_private_a_0" {
  value = module.vpc_production.subnet_production_private_a[0]
}

output "subnet_production_private_b_0" {
  value = module.vpc_production.subnet_production_private_b[0]
}

output "subnet_production_private_c_0" {
  value = module.vpc_production.subnet_production_private_c[0]
}

output "sec_group_demo_staging_public" {
  value = aws_security_group.demo_staging_public.id
}

output "sec_group_demo_staging_private" {
  value = aws_security_group.demo_staging_private.id
}

output "sec_group_demo_production_public" {
  value = aws_security_group.demo_production_public.id
}

output "sec_group_demo_production_private" {
  value = aws_security_group.demo_production_private.id
}
