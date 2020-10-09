resource "google_storage_bucket" "terra-bucket" {
  name          = var.name
  location      = "US"
  force_destroy = true
}
