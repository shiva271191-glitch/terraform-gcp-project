resource "google_compute_instance" "vm" {
  name         = var.vm_name
  machine_type = var.machine_type
  zone = var.zone


  lifecycle {
    create_before_destroy = true
  }

  boot_disk {
    initialize_params {
      image = var.image
      size  = var.disk_size
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }

  tags = ["practice-vm"]
}
