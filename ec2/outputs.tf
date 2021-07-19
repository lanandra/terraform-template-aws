# Generate output of EC2 public IP
output "ec2_public_ip" {
  value       = aws_instance.your_ec2_instance_name
  description = "Public IP of EC2 instance"
}