terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.51.0"
    }
  }
}


resource "google_project" "main" {
  name = var.proj-name
  project_id = var.project_id
  org_id = var.org_id
  folder_id = var.folder_id
  billing_account = var.billing_account
}