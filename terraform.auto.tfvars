project_id = "devopslearn-483509"
region     = "us-central1"
zone       = "us-central1-a"

vm_name     = "terraform-vm18"
machine_type = "e2-medium"
image       = "debian-cloud/debian-11"
disk_size   = 10

startup_script = "templates/vm-template/startup-script.sh"

bucket_name     = "devopslearn-storage-483509-new2"
bucket_location = "US"
storage_class   = "STANDARD"
