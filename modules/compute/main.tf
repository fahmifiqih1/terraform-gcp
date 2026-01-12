resource "google_compute_address" "static" {
  name = "ipv4-address"
}

resource "google_compute_instance" "vm-terraform" {
  name         = var.instance_name
  machine_type = var.mechine_type
  zone         = var.region

  tags = distinct(var.types_firewall)

  boot_disk {
    initialize_params {
      image        = var.image_os
      size         = var.os_size
      type         = var.type_disk
      labels       = var.labels_disk
      architecture = var.architecture_disk
    }
  }

  network_interface {
    subnetwork = "${var.vpc_name}-subnet"

    access_config {
      nat_ip = google_compute_address.static.address
    }
  }

  metadata = {
    "ssh-keys" = "${var.ssh_user}:${file("~/.ssh/id_gcp.pub")}" 
  }

  service_account {
    scopes = ["cloud-platform"]
  }
}