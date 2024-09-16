# data "google_cloudfunctions_function" "my-function" {
#   name = "list_running_instances"
# }
	
# output "bucket_name" {
#   value = data.google_cloudfunctions_function.my-function.id
# }
resource "google_storage_bucket" "auto-expire" {
  name          = "no-public-access-bucket"
  location      = "US"
  force_destroy = true

  public_access_prevention = "enforced"
}
terraform {
  required_version = ">= 0.13"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 5.41.0"
    }
    # hashicorp = {
    #   source = "hashicorp/time"
    # }
  }
}

provider "google" {
  project = "cloudside-academy"
  region = "us-central1"
  zone = "us-central1-a"
}