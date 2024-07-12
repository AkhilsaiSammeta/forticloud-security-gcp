
resource "google_project_service" "stackdriver_monitoring" {
  project = "your-gcp-project-id"
  service = "monitoring.googleapis.com"
}

resource "google_project_service" "stackdriver_logging" {
  project = "your-gcp-project-id"
  service = "logging.googleapis.com"
}
