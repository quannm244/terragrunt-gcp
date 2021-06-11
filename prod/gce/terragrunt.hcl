include {
  path = find_in_parent_folders()
}

terraform {
  source = "git@github.com:quannm244/terraform-gcp.git//modules/gce?ref=main"
}
inputs = {
  instance_name = "prod-instance"
  machine_type  = "f1-micro"
  network       = "default"
}