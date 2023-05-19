/*
This file is no longer managed by AWS Proton. The associated resource has been deleted in Proton.
*/

data "aws_region" "current" {}

data "aws_caller_identity" "current" {}

data "aws_partition" "current" {}

data "aws_availability_zones" "available" {
  state = "available"
}
