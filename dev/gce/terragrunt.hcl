include {
  path = find_in_parent_folders()
}

terraform {
  source = "git@github.com:quannm244/terraform-gcp.git//modules/gce?ref=main"
}
inputs = {
  instance_name = "dev-instance"
  machine_type  = "g1-small"
  network       = "default"
}