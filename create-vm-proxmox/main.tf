data "local_file" "ssh_public_key" {
  filename = "./terraform.pub"
}

resource "proxmox_virtual_environment_vm" "ubuntu_vm" {
  name      = "test-ubuntu"
  node_name = "pve"

  initialization {

    ip_config {
      ipv4 {
        address = "10.27.27.240/24"
        gateway = "10.27.27.1"
      }
    }

    user_account {
      username = "ubuntu"
      keys     = [trimspace(data.local_file.ssh_public_key.content)]
    }
  }

  disk {
    datastore_id = "VM-Drives"
    file_id      = proxmox_virtual_environment_download_file.ubuntu_cloud_image.id
    interface    = "virtio0"
    iothread     = true
    discard      = "on"
    size         = 20
  }

  network_device {
    bridge = "vmbr0"
  }
}

resource "proxmox_virtual_environment_download_file" "ubuntu_cloud_image" {
  content_type = "iso"
  datastore_id = "ISOS"
  node_name    = "pve"
  overwrite = true
  url = "https://cloud-images.ubuntu.com/noble/current/noble-server-cloudimg-amd64.img"
  # url = "https://cloud-images.ubuntu.com/jammy/current/jammy-server-cloudimg-amd64.img" # Uncomment this line to use Ubuntu 22.04
}