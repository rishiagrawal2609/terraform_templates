terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.51.0"
    }
  }
}


resource "google_compute_instance_template" "template" {
  name = var.vmname 
  project = var.project 
  region = var.region 
  machine_type = var.machine_type 
  name_prefix = var.name_prefix 
  can_ip_forward = var.can_ip_forward 
  description = var.description 
  labels = var.lables 
  instance_description = var.instance_description
  metadata = var.metadata 
  metadata_startup_script = var.metadata_startup_script
  network_interface {
    network = var.myVmNet
    subnetwork = var.mySubNet
    subnetwork_project = var.project
    network_ip = var.networkip
    access_config {
      nat_ip = var.nat_ip
    }
    alias_ip_range {
      ip_cidr_range = var.ip_cidr_range_alias
    }
  }

  #service_account {
  # 
  #}
  tags = var.tags
  shielded_instance_config {
    enable_secure_boot = var.enable_secure_boot
    enable_integrity_monitoring = var.enable_integrity_monitoring
    enable_vtpm = var.enable_vtpm 
  }
  disk {
    auto_delete = var.auto_delete
    boot = var.boot_disk
    device_name = var.diskName
    disk_name = var.diskName
    source_image = var.OSimage
    source_snapshot = var.source_snapshot
    mode = var.diskMode
    source = var.source
    disk_type = var.disk_type
    disk_size_gb = var.diskSize
    labels = var.diskLabels

  }

}

