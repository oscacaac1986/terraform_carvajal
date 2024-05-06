variable "AWS_region" {
  type    = string
  default = "us-east-1"
}

variable "aws_access_key_id" {
  description = "AWS access key ID"
  type        = string
}

variable "aws_secret_access_key" {
  description = "AWS secret access key"
  type        = string
}

variable "vpc_cidr_block" {
  type    = string
  default = "10.0.0.0/16"
}

variable "public_subnet_1_cidr_block" {
  type    = string
  default = "10.0.1.0/24"
}

variable "public_subnet_2_cidr_block" {
  type    = string
  default = "10.0.2.0/24"
}

variable "public_subnet_3_cidr_block" {
  type    = string
  default = "10.0.3.0/24"
}

variable "private_subnet_1_cidr_block" {
  type    = string
  default = "10.0.10.0/24"
}

variable "private_subnet_2_cidr_block" {
  type    = string
  default = "10.0.20.0/24"
}

variable "private_subnet_3_cidr_block" {
  type    = string
  default = "10.0.30.0/24"
}




