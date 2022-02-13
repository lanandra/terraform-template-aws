# Set outputs
output "subnet_staging_public_a" {
  value = tolist("${aws_subnet.public_subnet_az_a.*.id}")
}

output "subnet_staging_public_b" {
  value = tolist("${aws_subnet.public_subnet_az_b.*.id}")
}

output "subnet_staging_public_c" {
  value = tolist("${aws_subnet.public_subnet_az_c.*.id}")
}

output "subnet_staging_private_a" {
  value = tolist("${aws_subnet.private_subnet_az_a.*.id}")
}

output "subnet_staging_private_b" {
  value = tolist("${aws_subnet.private_subnet_az_b.*.id}")
}

output "subnet_staging_private_c" {
  value = tolist("${aws_subnet.private_subnet_az_c.*.id}")
}

output "subnet_production_public_a" {
  value = tolist("${aws_subnet.public_subnet_az_a.*.id}")
}

output "subnet_production_public_b" {
  value = tolist("${aws_subnet.public_subnet_az_b.*.id}")
}

output "subnet_production_public_c" {
  value = tolist("${aws_subnet.public_subnet_az_c.*.id}")
}

output "subnet_production_private_a" {
  value = tolist("${aws_subnet.private_subnet_az_a.*.id}")
}

output "subnet_production_private_b" {
  value = tolist("${aws_subnet.private_subnet_az_b.*.id}")
}

output "subnet_production_private_c" {
  value = tolist("${aws_subnet.private_subnet_az_c.*.id}")
}

output "vpc_id" {
  value = aws_vpc.vpc.id
}
