resource "random_id" "bucket" {
  byte_length = "4"
}

resource "google_storage_bucket" "testbucket" {
  name          = "${var.project_id}-testbucket-${random_id.bucket.hex}"
  location      = "${var.buckets_location}"
  force_destroy = true
  count         = "${var.create_gcs_buckets ? 1 : 0}"
}
