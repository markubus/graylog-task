output "loadbalancer_public_fqdn" {
  description = "FQDN of the provisioned loadbalancer"
  value = aws_lb.application_load_balancer.dns_name
}
