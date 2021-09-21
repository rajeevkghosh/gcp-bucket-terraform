provider "google" {
  access_token = var.access_token
}

resource "google_storage_bucket" "gcp_bucket" {
  project      = "tokyo-nomad-323506"
  name          = "gcp_bucket_terraform_rajeev"
  location      = "US"
  force_destroy = true

  labels = {
      #env        =  "dev"
      foo        =  "bar"
    }
}
