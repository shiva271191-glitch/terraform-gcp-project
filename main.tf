module "vm" {

  source = "./modules/vm"

  vm_name        = var.vm_name
  machine_type   = var.machine_type
  zone           = var.zone
  image          = var.image
  disk_size      = var.disk_size
  startup_script = var.startup_script

}

module "gcs_bucket" {

  source = "./modules/gcs_bucket"

  bucket_name   = var.bucket_name
  location      = var.bucket_location
  storage_class = var.storage_class

}
