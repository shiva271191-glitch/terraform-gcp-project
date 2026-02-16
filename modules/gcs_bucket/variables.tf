variable "bucket_name" {
  description = "Name of the GCS bucket"
  type        = string
}

variable "location" {
  description = "Bucket location"
  type        = string
}

variable "storage_class" {
  description = "Storage class"
  type        = string
}

variable "versioning" {
  description = "Enable versioning"
  type        = bool
}

variable "labels" {
  description = "Labels for bucket"
  type        = map(string)
  default     = {}
}
