resource "google_storage_bucket" "bucket" {

  name          = var.bucket_name
  location      = var.location
  storage_class = var.storage_class

  uniform_bucket_level_access = true

  versioning {
    enabled = var.versioning
  }

  labels = var.labels

  lifecycle {
    prevent_destroy = false
  }

}
