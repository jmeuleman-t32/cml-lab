terraform {
  required_providers {
    nxos = {
      source = "CiscoDevNet/nxos"
      version = "0.5.10"
    }
  }
}

provider "nxos" {
  username = var.nxos_un
  password = var.nxos_pw
  # You can target many devices; each "device" block is a switch
  devices = [ {
    nxos_leaf3 = {
      host = var.nxos_leaf3_ip
      port = 443
      ssl = true
    }
  } ]
  
  insecure = true # only if using self-signed certs; prefer real certs in prod
}
