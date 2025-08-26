provider "aws" {
  region = var.region
}

data "aws_vpc" "selected" {
  id = var.vpc_id
}

resource "aws_subnet" "this" {
  for_each = {
    for idx, cidr in var.subnet_cidrs :
    idx => { cidr = cidr, az = var.azs[idx] }
  }

  vpc_id                  = data.aws_vpc.selected.id
  cidr_block              = each.value.cidr
  availability_zone       = each.value.az
  map_public_ip_on_launch = var.map_public_ip_on_launch

  tags = merge(
    { Name = "${var.name_prefix}-${each.key}" },
    var.tags
  )
}

