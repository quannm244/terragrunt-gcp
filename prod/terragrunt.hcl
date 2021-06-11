remote_state {
    backend = "gcs"
    generate = {
        path = "backend.tf"
        if_exists = "overwrite_terragrunt"
    }

    config = {
        bucket = "cccm-terragrunt-prod"
        credentials = "/Users/quannm/Learn/Terraform/creds/first-project-315701-89fe82dfb738.json"
        prefix = "${path_relative_to_include()}"
        skip_bucket_creation = true
    }
} 

generate "provider" {
  path = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
provider "google" {
  credentials = file("/Users/quannm/Learn/Terraform/creds/first-project-315701-89fe82dfb738.json")
  project     = "first-project-315701"
  region      = "us-east1"
  zone        = "us-east1-b"
}
EOF
}