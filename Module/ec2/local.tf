locals {
  name = "${var.name}-${terraform.workspace}"
  azs = data.aws_availability_zones.available.names
}