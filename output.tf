output "vpc_id" {
  description = "VPC ID"
  value       = module.vpc.vpc_id
}


output "vpc_cidr_block" {
  description = "CIDR BLOCK OF VPC"
  value       = module.vpc.vpc_cidr_block
}


output "public_subnets" {
  description = "PUBLIC SUBNET LIST"
  value       = module.vpc.public_subnets
}


output "azs" {
  description = "LIST OF AVAILABILITY ZONES"
  value       = module.vpc.azs
}

output "instance_id" {

value = aws_instance.terraform-cloud-vm[0].id
}
