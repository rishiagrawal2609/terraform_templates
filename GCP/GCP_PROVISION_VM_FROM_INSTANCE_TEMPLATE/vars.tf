variable "instance-temp" {
  description = "The instance template you want to use"
  type = string
}

variable "zone" {
  description = "Zone you wnat to launch the instances"
  type = string
  source = compute.zones.list_zones
}

variable "noOfInstance" {
  description = "NO of instances to launch with this template"
  type = number
  default = 1
}

