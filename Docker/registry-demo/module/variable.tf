variable artifact-config {
  type        = map  (any)
  description = "Please provide configuration for artifact"
  default     = {
    location      = "us-central1"
    repository_id = "my-repository"
  }
}