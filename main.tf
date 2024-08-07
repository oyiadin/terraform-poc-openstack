locals {
  context = var.context
}

resource "openstack_compute_instance_v2" "vm_instance" {
  name            = var.name
  image_id        = var.image_id
  flavor_id       = var.flavor_id
  availability_zone = var.az
  # key_pair        = "my_key_pair_name"
  # security_groups = ["default"]

  #metadata = {
  #  this = "that"
  #}

  network {
    uuid = var.network_subnet_id
  }
  config_drive = false
}
