terraform {
  source = "tfr:///terraform-aws-modules/s3-bucket/aws//.?version=4.1.1"
}

include "root" {
  path = find_in_parent_folders()
}

inputs = {
  bucket = "tofu-poc-s3"
  acl    = "private"

  versioning = {
    enabled = true
  }
}

