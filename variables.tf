variable "Count" {
    default = 3
  }
variable "Counter" {
    default = 1
  }
variable "aws_region" {
  description = "AWS region for hosting our your network"
  default = "us-east-1"
}
variable "amis" {
    description = "AMIs by region"
    default = {
        us-east-1 = "ami-0cfee17793b08a293" # ubuntu 14.04 LTS
    }
}
variable "vpc_cidr" {
    description = "CIDR for the whole VPC"
    default = "10.0.0.0/16"
}
variable "public_subnet_cidr" {
    description = "CIDR for the Public Subnet"
    default = "10.0.0.0/24"
}
variable "private_subnet_cidr" {
    description = "CIDR for the Private Subnet"
    default = "10.0.1.0/24"
}
variable "aws_key_path" {
  description = "Enter the path to the SSH Public Key to add to AWS."
  default = "Your pet location"
}
variable "aws_key_name" {
  description = "Key name for SSHing into EC2"
  default = "blockchain"
}
variable "aws_availability_zones" {
  default     = "us-east-1a,us-east-1b,us-east-1c,us-east-1d"
  description = "List of availability zones, use AWS CLI to find your "
}
variable "asg_min" {
  description = "Min numbers of servers in ASG"
  default     = "2"
}
variable "asg_max" {
  description = "Max numbers of servers in ASG"
  default     = "3"
}
variable "asg_desired" {
  description = "Desired numbers of servers in ASG"
  default     = "2"
}
