terraform {
  backend "gcs" {
    bucket  = "hilyas-terraform-admin"
    path    = "/terraform.tfstate"
    project = "hilyas-terraform-admin"
  }
}
