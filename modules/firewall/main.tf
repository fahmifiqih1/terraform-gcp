resource "google_compute_firewall" "rules_ssh" {
  name    = "${var.vpc_name}-firewall"
  network = "${var.vpc_name}"

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = var.source_ranges_ssh
  target_tags   = ["ssh-server"]

}

resource "google_compute_firewall" "rules_http" {
  name    = "${var.vpc_name}-firewall-http"
  network = "${var.vpc_name}"

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges = var.source_ranges_http
  target_tags = ["http-server"]

}

resource "google_compute_firewall" "rules_https" {
  name    = "${var.vpc_name}-firewall-https"
  network = "${var.vpc_name}"

  allow {
    protocol = "tcp"
    ports    = ["443"]
  }

  source_ranges = var.source_ranges_https
  target_tags = ["https-server"]

}