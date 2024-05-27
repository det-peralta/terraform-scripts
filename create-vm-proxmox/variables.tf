variable "virtual_environment_endpoint" {
  type        = string
  description = "The endpoint for the Proxmox Virtual Environment API (example: https://host:port)"
}

variable "virtual_environment_username" {
  type        = string
  description = "Use terraform variable or remove the line, and use PROXMOX_VE_USERNAME environment variable (example: root@pam)"
}

variable "virtual_environment_password" {
  type        = string
  description = "Use terraform variable or remove the line, and use PROXMOX_VE_PASSWORD environment variable"
}