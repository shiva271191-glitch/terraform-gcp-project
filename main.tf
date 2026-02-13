resource "google_compute_instance" "vm" {
  name         = "terraform-vm4"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      size  = 10
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }

  tags = ["practice-vm"]
}

