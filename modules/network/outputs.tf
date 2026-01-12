output "vpc_name_output" {
  value       = google_compute_network.vpc_network.name
  description = "Nama VPC yang baru dibuat"
}