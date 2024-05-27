terraform {
  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = "0.57.1"
    }
  }
}

# provider "proxmox" {
#   endpoint  = var.virtual_environment_endpoint
#   api_token = var.virtual_environment_token
#   insecure = true
#   ssh {
#     agent    = true
#     username = "sleepy"
#   }
# }

provider "proxmox" {
  endpoint = var.virtual_environment_endpoint
  username = var.virtual_environment_username
  password = var.virtual_environment_password
  insecure = true
}