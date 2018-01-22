variable "project_id" {
  type = "string"

  //   default = "hilyas-terraform-admin"
}

variable "region" {
  type = "string"

  //   default = "us-central1"
}

variable "zone" {
  type = "string"

  //   default = "us-central1-a"
}

// change to type string if used with member or binding instead of policy
variable "editors" {
  type = "list"
}

variable "viewers" {
  type = "list"
}

variable "buckets_location" {
  type    = "string"
  default = "US"
}

variable "create_gcs_buckets" {
  description = "create Google Storage Buckets"
  default     = true
}
