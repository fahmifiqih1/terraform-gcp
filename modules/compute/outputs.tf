output "external_ip" {
  value       = google_compute_address.static.address
  description = "The external IP address of the VM instance"
}