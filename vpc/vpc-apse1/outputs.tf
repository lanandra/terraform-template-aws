# Set outputs
output "subnet_public_apse1_0" {
  value = aws_subnet.public_apse1_0.id
}

output "subnet_private_apse1_0" {
  value = aws_subnet.private_apse1_0.id
}

output "sec_group_demo_public_apse1_0" {
  value = aws_security_group.demo_public_apse1_0.id
}

output "sec_group_demo_private_apse1_0" {
  value = aws_security_group.demo_private_apse1_0.id
}
