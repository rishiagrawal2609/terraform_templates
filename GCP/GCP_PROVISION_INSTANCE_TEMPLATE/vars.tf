# Variable to be defined
variable "project" {
  description = "Project ID"
  type = string
}
variable "vmname" {
  type = string
  description = "Name of the VM"
}

variable "machine_type" {
  description = "type of the machine"
  type = string
  source = compute.machinetype.list_machinetypes
}

variable "region" {
  description = "Zone on which the VM should be provisioned"
  type = string
  source = compute.zone.list_zones
}
variable "name_prefix" {
  description = "name prefix for the instances launch from this template"
  type = string
}

variable "tags" {
  description = "set(string):Network tags"
  type = set(strings)
}

variable "description"{
  description = "The Decription for the VM"
  type = string
}

variable "desired_status" {
  description = "Running state"
  type = string
  default = "RUNNING"
  allowed_values = ["RUNNING", "TERMINATED"]
}
variable "deletion_protection" {
  description = "Bool: Deletion Protection"
  type = bool
  default = false
}


variable "labels" {
  type = map
  description = "Lables needed to add to"
}

variable "instance_description" {
  type = string
  description = "Describe the instance"
}

variable "metadata" {
  type = map
  description = "Metadata for the script"
}

variable "metadata_startup_script" {
  description = "Startup script"
  type = string
  default = null
}
# boot_disk
variable "OSimage" {
  description = "OS Image to use"
  type = string
  default = null
  source = compute.image.list_images
}

variable "auto_delete" {
  description = "Boolean: Boot disk deletion on VM deletion"
  default = true
  type = bool
  allowed_values = [true,false]

}

variable "diskName" {
    description = "Name of the disk"
    type = string
}

variable "diskMode" {
  description = "Mode of the disk"
  type = string
  default = "READ_WRITE"
  allowed_values = ["READ_WRITE","READ_ONLY"]
}

variable "diskSize" {
  description = "Size of disk in GB"
  type = number
  default = 20
}
variable "source" {
  description = "Existing source of the boot-disk(self-id)"
  type = string
  default = null
  source = compute.disk.list_disk
}

variable "can_ip_forward" {
  description = "CAN IP FORWARD"
  type = bool
  default = false
  allowed_values = [true,false]
}
variable "source_snapshot" {
  description = "Self-link snapshots"
  default = null
  type = string
  source = compute.snapshot.list_snapshots
}

variable "boot_disk" {
  description = "Bool: BootDisk"
  allowed_values = [true,false]
  default = true
  type = bool
}

variable "diskLables" {
  description = "lables for disk"
  type  = map
}


# network interface

variable "myVmNet" {
  description = "Existing VPC Name"
  type = string
  source = compute.networks.list_networks
}

variable "mySubNet" {
  description = "Existing Subnet"
  type = string
  source = compute.subnetwork.list_subnetworks
}


variable "networkip" {
  description = "Give the IP in CIDR Range"
  type = string
}

variable "nat_ip" {
  description = "Give NAT IP"
  type = string
  default = null
}

variable "ip_cidr_range_alias" {
  description = "IP  IN CIDR RANGE FOR ALIAS IP"
  type = string
}

# shilded instance config
variable "enable_secure_boot" {
  description = "Enable Secure Boot"
  type = bool
  allowed_values = [true,false]
}

variable "enable_integrity_monitoring" {
  description = "Enable Integrity monitoring"
  type = bool
  allowed_values = [true,false]
}

variable "enable_vtpm" {
  description = "Enable vTPM"
  type = bool
  allowed_values = [true,false]
}


