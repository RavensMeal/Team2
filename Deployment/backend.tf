terraform {
  backend "gcs" {
    bucket = "terraform-project-pauln"
    prefix = "/dev/mnt/RavensMeal/project_infrastructure/Deployment"
  }
}
