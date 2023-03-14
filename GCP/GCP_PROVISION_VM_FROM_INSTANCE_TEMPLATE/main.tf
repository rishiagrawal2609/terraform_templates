terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

resource "google_compute_instance_from_template" "main" {
  count = var.noOfInstance
  source_instance_template = var.instance-temp
  zone = var.zone

}