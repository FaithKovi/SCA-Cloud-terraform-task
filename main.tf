provider "google" {
  project = "fifth-legacy-323003"
  region = "us-central1"
  zone = "us-central1-a"
}
resource "google_compute_network" "vpc-terra-network" {
  name = "vpc-terra-network"
  auto_create_subnetworks = false
}
resource "google_compute_subnetwork" "terraform-pub" {
  name = "terraform-pub"
  ip_cidr_range = "10.2.0.0/24"
  region = "us-central1"
  network = google_compute_network.vpc-terra-network.id
}
resource "google_compute_subnetwork" "terraform-priv" {
  name = "terraform-priv"
  ip_cidr_range = "10.2.1.0/24"
  region = "us-central1"
  network = google_compute_network.vpc-terra-network.id
}


