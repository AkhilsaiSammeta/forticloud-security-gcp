

resource "google_project_iam_binding" "project_binding" {
  project = "your-gcp-project-id"
  role    = "roles/editor"

  members = [
    "user:example@example.com",
    "serviceAccount:service-account-name@your-gcp-project-id.iam.gserviceaccount.com",
  ]
}
