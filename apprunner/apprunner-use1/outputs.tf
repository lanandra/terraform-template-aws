# Set outputs
output "certificate_validation_records" {
  value = aws_apprunner_custom_domain_association.your_service.certificate_validation_records
}

output "dns_target" {
  value = aws_apprunner_custom_domain_association.your_service.dns_target
}
