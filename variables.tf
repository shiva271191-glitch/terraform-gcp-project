variable "project_id" {
  type        = string
  description = "GCP Project ID"
}

variable "region" {
  type        = string
  description = "GCP Region"
}

variable "zone" {
  type        = string
  description = "GCP Zone"
}

variable "vm_name" {
  type        = string
  description = "Name of the VM"
}

variable "machine_type" {
  type        = string
  description = "Machine type for VM"
}

variable "image" {
  type        = string
  description = "Boot disk image"
}

variable "disk_size" {
  type        = number
  description = "Boot disk size in GB"
}
