data "google_cloudfunctions_function" "my-function" {
  name = "list_running_instances"
}
	
output "bucket_name" {
  value = data.google_cloudfunctions_function.my-function.id
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
  region = "asia-south1"
  zone = "asia-south1-a"
}