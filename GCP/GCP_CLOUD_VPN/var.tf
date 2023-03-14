variable "network" {
  description = "Name of the network"
  type = string
}

variable "peer_ips" {
  description = "Peer IPs"
  type = list(string)
}

variable "project_id" {
  description = "Project ID"
  type = string
}

variable "region" {
  description = "Zone where VPN should be configured"
  type = string
}

variable "advertised_route_priority" {
  description = "Advertised Route Priority"
  type = number
  default = 100
}

variable "bgp_cr_session_range" {
  description = "BGP CR session Range"
  type = list(string)
  default = [ "169.254.1.1/30", "169.254.1.5/30" ]
}

variable "bgp_remote_session_range" {
  description = "bgp remote session name"
  type = list(string)
  default = [ "169.254.1.2", "169.254.1.6" ]
}

variable "cr_enabled" {
  description = "CR enabled"
  type = bool
  default = false
}

variable "cr_name" {
  description = "CR name"
  type = string
  default = ""
}

variable "gateway_name" {
  description = "Gateway name"
  default = "test-vpn"
  type= string
}

variable "ike_version" {
  description = "IKE Version"
  default = 2
  type = number
}

variable "local_traffic_selector" {
  description = "Local Traffic Selector"
  default = ["0.0.0.0/0"]
  type = list(string)
}

variable "peer_asn" {
  description = "Peer ASN"
  type = list(string)
  default = ["65101"]
}

variable "remote_subnet"{
  description = "remote subnet ip range in CIDR format"
  type =list(string)
  default = []
}

variable "remote_traffic_selector" {
  description = "Remote_traffic_selector"
  type = list(string)
  default = [ "0.0.0.0/0" ]
}

variable "route_priority" {
  description = "Route Priority"
  default = 1000
  type = number
}

variable "route_tags" {
  type = list(string)
  description = "Route Tags"
  default = []
}

variable "shared_secret" {
  type = string
  default = ""
  description = "Shared Secret"
}

variable "tunnel_count" {
  type = number
  default = 1
  description = "Tunnel Count"
}

variable "tunnel_name_prefix" {
  type = string
  default = ""
  description = "Tunnel Name Prefix"
}

variable "vpn_gw_ip" {
  type = string
  default = ""
  description = "VPN Gateway IP"
}

