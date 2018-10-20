provider "aws" {
  region                  = "${var.region}"
  shared_credentials_file = "${var.shared_credentials_file}"
  profile                 = "${var.profile}"
}

terraform {
  backend "s3" {
    bucket = "affiliated-project-bucket-state"
    key    = "state"
    region = "eu-west-1"
  }
}
