resource "google_compute_network" "vpc_network" {
  name                    = "${var.vpc_name}-${local.vpc_name_prefix}"
  auto_create_subnetworks = false
  mtu                     = 1460
}

resource "google_compute_subnetwork" "subnet" {
  name          = "${var.vpc_name}-subnet"
  ip_cidr_range = "10.0.1.0/24"
  region        = local.region
  network       = google_compute_network.vpc_network.id
}