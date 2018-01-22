// - Setup 2 viewer service accounts
// - Setup 1 editor service account

// resource "google_project_iam_member" "editor" {
//   project = "${var.project_id}"
//   role    = "roles/editor"
//   member  = "${var.editors}"
// }

// resource "google_project_iam_binding" "viewer" {
//   project = "${var.project_id}"
//   role    = "roles/viewer"
//   members = "${var.viewers}"
// }

data "google_iam_policy" "myproject" {
  binding {
    role    = "roles/viewer"
    members = "${var.viewers}"
  }

  binding {
    role    = "roles/editor"
    members = "${var.editors}"
  }
}

resource "google_project_iam_policy" "myproject" {
  project     = "${var.project_id}"
  policy_data = "${data.google_iam_policy.myproject.policy_data}"
}
