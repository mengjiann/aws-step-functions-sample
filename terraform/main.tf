provider "aws" {
  region = "${var.aws_region}"
  profile = "${var.aws_credential_profile}"
}

provider "archive" {}