output "instance_ip_address" {
  value = aws_instance.ec2_jenkins.public_ip
}
