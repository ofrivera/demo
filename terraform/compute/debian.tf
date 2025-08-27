provider "google" {
  credentials = file("<YOUR-CREDENTIALS-FILE>")
  project     = "<YOUR-PROJECT-ID>"
  region      = "<YOUR-REGION>"
}

resource "google_compute_instance" "debian_vm" {
  name         = "debian-vm"
  machine_type = "e2-medium"
  zone         = "<YOUR-ZONE>"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9-stretch"
    }
  }

  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  metadata = {
    ssh-keys = "admin:${file("~/.ssh/id_rsa.pub")}"
  }

  service_account {
    scopes = ["https://www.googleapis.com/auth/compute.readonly"]
  }
}
