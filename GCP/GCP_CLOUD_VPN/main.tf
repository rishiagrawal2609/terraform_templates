terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

module "vpn" {
  source  = "terraform-google-modules/vpn/google"
  version = "2.3.1"
  network = var.network
  peer_ips = var.peer_ips
  project_id = var.project_id
  region = var.region
  advertised_route_priority = var.advertised_route_priority
  bgp_cr_session_range = var.bgp_cr_session_range
  bgp_remote_session_range = var.bgp_remote_session_range
  cr_enabled = var.cr_enabled
  cr_name = var.cr_name
  gateway_name = var.gateway_name
  ike_version = var.ike_version
  local_traffic_selector = var.local_traffic_selector
  peer_asn = var.peer_asn
  remote_subnet = var.remote_subnet
  remote_traffic_selector = var.remote_traffic_selector
  route_priority = var.route_priority
  route_tags = var.route_tags
  shared_secret = var.shared_secret
  tunnel_count = var.tunnel_count
  tunnel_name_prefix = var.tunnel_name_prefix
  vpn_gw_ip = var.vpn_gw_ip
}