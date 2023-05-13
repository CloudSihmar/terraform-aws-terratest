variable "region" {
  description = "AWS Region"
  type        = string
  default     = "us-west-2"
}


variable "vpc_name" {
  description = "VPC Name"
  type        = string
  default = "prod-vpc"
}

# VPC CIDR Block
variable "vpc_cidr_block" {
  description = "VPC CIDR Block"
  type        = string
  default     = "30.30.0.0/16"
}

# VPC Availability Zones
variable "vpc_availability_zones" {
  description = "VPC Availability Zones"
  type        = list(string)
  default     = ["us-west-2a" , "us-west-2b"]
}

# VPC Public Subnets
variable "vpc_public_subnets" {
  description = "VPC Public Subnets"
  type        = list(string)
  default     = ["30.30.1.0/24" , "30.30.2.0/24"]
}


variable "instance_type" {
  description = "EC2 Instance Type "
  type        = string
  default = "t2.micro"
}

variable "ami" {
  description = "Region of AWS"
  type        = string
  default = "ami-0fcf52bcf5db7b003"
}
