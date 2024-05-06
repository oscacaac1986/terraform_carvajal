# Definir el proveedor de AWS
provider "aws" {
  region     = var.AWS_region
  access_key = var.aws_access_key_id
  secret_key = var.aws_secret_access_key
}

# Crear la VPC
resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr_block
}

# Crear las subredes públicas
resource "aws_subnet" "public_subnet_1" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.public_subnet_1_cidr_block
  map_public_ip_on_launch = true
}

resource "aws_subnet" "public_subnet_2" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.public_subnet_2_cidr_block
  map_public_ip_on_launch = true
}

resource "aws_subnet" "public_subnet_3" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.public_subnet_3_cidr_block
  map_public_ip_on_launch = true
}

# Crear las subredes privadas
resource "aws_subnet" "private_subnet_1" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.private_subnet_1_cidr_block
}

resource "aws_subnet" "private_subnet_2" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.private_subnet_2_cidr_block
}

resource "aws_subnet" "private_subnet_3" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.private_subnet_3_cidr_block
}

# Crear el Internet Gateway
resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = aws_vpc.vpc.id
}

# Crear la tabla de enrutamiento
resource "aws_route_table" "main_routing_table" {
  vpc_id = aws_vpc.vpc.id
}

# Asociar las subredes públicas a la tabla de enrutamiento
resource "aws_route" "public_route" {
  route_table_id = aws_route_table.main_routing_table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.internet_gateway.id
}
