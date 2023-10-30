data "google_compute_instance" "all_instance" {
  project = "cs-internal-cust-suc-cloudops"
  zone    = "us-central1-a"  # Update with your desired zone
}

output "vm_instance" {
  value = data.google_compute_instance.all_instance.id
}