provider "google" {
 project = "your-gcp-project-id"
 region  = "your-gcp-region"
}

resource "google_compute_instance" "ubuntu-vm" {
 name         = "ubuntu-vm"
 machine_type = "e2-medium"
 zone         = "your-gcp-zone"

 boot_disk {
  initialize_params {
   image = "ubuntu-os-cloud/ubuntu-2004-lts"
  }
 }

 network_interface {
  network = "default"
  access_config {}
 }
}