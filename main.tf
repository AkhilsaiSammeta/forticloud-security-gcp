

provider "google" {
  credentials = file("credentials.json")
  project     = "your-gcp-project-id"
  region      = "us-central1"
}

resource "google_compute_network" "vpc_network" {
  name                    = "forticloud-vpc"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet" {
  name          = "forticloud-subnet"
  ip_cidr_range = "192.168.0.0/24"
  network       = google_compute_network.vpc_network.self_link
  region        = "us-central1"
}

// Define IAM roles, firewall rules, etc.
