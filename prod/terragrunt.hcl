remote_state {
    backend = "gcs"
    generate = {
        path = "backend.tf"
        if_exists = "overwrite_terragrunt"
    }

    config = {
        bucket = "cccm-terragrunt-prod"
        credentials = "/Users/quannm/Learn/Terraform/creds/ivory-bonus-314308-8e9aa0ead113.json"
        prefix = "${path_relative_to_include()}"
        skip_bucket_creation = true
    }
} 

generate "provider" {
  path = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
provider "google" {
  credentials = file("/Users/quannm/Learn/Terraform/creds/ivory-bonus-314308-8e9aa0ead113.json")
  project     = "ivory-bonus-314308"
  region      = "us-east1"
  zone        = "us-east1-b"
}
EOF
}