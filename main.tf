resource ibm_is_subnet subnet {
  name                     = "${var.name}-${var.zone}-subnet"
  vpc                      = var.vpc_id
  zone                     = var.zone
  ipv4_cidr_block          = var.subnet_cidr
  network_acl              = local.network_acl
  public_gateway           = local.public_gateway
  resource_group           = data.ibm_resource_group.group.id
}

locals {
  network_acl    = var.network_acl != "" ? var.network_acl : ""
  public_gateway = var.public_gateway != "" ? var.public_gateway : ""
}
