provider "google" {
  project     = var.project_id
  region      = var.region
  credentials = file("../../gcp-json/lateral-chiller-483407-d6-a99ebf38b2db.json")
}