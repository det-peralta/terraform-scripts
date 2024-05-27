variable "virtual_environment_endpoint" {
  type        = string
  description = "The endpoint for the Proxmox Virtual Environment API (example: https://host:port)"
}

# variable "virtual_environment_token" {
#   type        = string
#   description = "The token for the Proxmox Virtual Environment API"
# }

variable "virtual_environment_username" {
  type        = string
  description = "Use terraform variable or remove the line, and use PROXMOX_VE_USERNAME environment variable"
}

variable "virtual_environment_password" {
  type        = string
  description = "Use terraform variable or remove the line, and use PROXMOX_VE_PASSWORD environment variable"
}