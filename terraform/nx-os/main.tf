# VLAN 1610
resource "nxos_vlan" "vlan1610" {
  device  = "nx-leaf-3"
  vlan_id = 1610
  name    = "User-VLAN"
}

# VRF
resource "nxos_vrf" "user" {
  device = "nx-leaf-3"
  name   = "user"
}

# SVI (vlan1610) in VRF user with IPv4
resource "nxos_interface_vlan" "vlan1610_svi" {
  device     = "nx-leaf-3"
  vlan_id    = 1610
  admin_state = "up"
  vrf        = nxos_vrf.user.name
  ipv4 = {
    address = "172.16.10.254"
    mask    = 24
  }
}
