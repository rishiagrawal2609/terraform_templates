# Variable to be defined
variable "project" {
  description = "Project ID"
  type = string
}
variable "Vmname" {
  type = string
  description = "Name of the VM"
}

variable "machine_type" {
  description = "type of the machine"
  type = string
  source = "machinetype.list_machinetypes"
}

variable "zone" {
  description = "Zone on which the VM should be provisioned"
  type = string
  source = "zone.list_zones"
}

variable "tags" {
  description = "set(string):Network tags"
  type = list(string)
  
}

variable "description"{
  description = "The Decription for the VM"
  type = string
}

variable "desired_status" {
  description = "Running state"
  default = "RUNNING"
  allowedValues = ["RUNNING", "TERMINATED"]
}
variable "deletion_protection" {
  description = "Bool: Deletion Protection"
  type = bool
  default = false
}

variable "hostname" {
  description = "Hostname for the VM"
  type = string
  default = null
}

variable "labels" {
  type = map
  description = "Lables needed to add to"
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
  source = "image.list_global_images"
}

variable "auto_delete" {
  description = "Boolean: Boot disk deletion on VM deletion"
  default = true
  allowedValues = [true,false]

}

variable "diskName" {
    description = "Name of the disk"
    type = string
}

variable "diskMode" {
  description = "Mode of the disk"
  default = "READ_WRITE"
  allowedValues = ["READ_WRITE","READ_ONLY"]
}

variable "diskSize" {
  description = "Size of disk in GB"
  type = number
  default = 20
}
variable "disk_source" {
  description = "Existing source of the boot-disk(self-id)"
  type = string
  default = null
  source = "disk.list_disk"
}

variable "can_ip_forward" {
  description = "CAN IP FORWARD"
  type = bool
  default = false
  allowedValues = [true,false]
}

# network interface

variable "myVmNet" {
  description = "Existing VPC Name"
  type = string
  source = "network.list_networks"
}

variable "mySubNet" {
  description = "Existing Subnet"
  type = string
  source = "subnetwork.list_subnetworks"
}

variable "subnetwork_project" {
  description = "Name of the project where SubNetwork exist"
  default = var.project
  type = string
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
  allowedValues = [true,false]
}

variable "enable_integrity_monitoring" {
  description = "Enable Integrity monitoring"
  allowedValues = [true , false]
}

variable "enable_vtpm" {
  description = "Enable vTPM"
  allowedValues = [true,false]
}


