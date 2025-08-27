provider "google" {
  credentials = file("<YOUR-CREDENTIALS-FILE>")
  project     = "<YOUR-PROJECT-ID>"
  region      = "<YOUR-REGION>"
}

resource "google_compute_instance" "ubuntu_vm" {
  name         = "ubuntu-vm"
  machine_type = "e2-medium"
  zone         = "<YOUR-ZONE>"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }

  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
  }

  service_account {
    scopes = ["https://www.googleapis.com/auth/compute.readonly"]
  }
}
