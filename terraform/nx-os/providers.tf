terraform {
  required_providers {
    nxos = {
      source  = "CiscoDevNet/nxos"
      version = "~> 0.6" # or latest from the registry
    }
  }
}

provider "nxos" {
  username = var.nxos_username
  password = var.nxos_password
  # You can target many devices; each "device" block is a switch
  devices = {
    nx-leaf-3 = {
      host = var.nx-leaf-3_ip
      port = 443
      ssl  = true
    }
  }
  insecure = true # only if using self-signed certs; prefer real certs in prod
}
