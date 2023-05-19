/*
This file is no longer managed by AWS Proton. The associated resource has been deleted in Proton.
*/

resource "aws_s3_bucket" "b" {
  bucket = "${var.environment.inputs.s3_bucket_name}-${data.aws_caller_identity.current.account_id}"

  tags = {
    nike-application = var.environment.inputs.tags.nike_application
    env = var.environment.name
  }
}

resource "aws_s3_bucket_versioning" "b" {
  bucket = aws_s3_bucket.b.id
  versioning_configuration {
    status = "Disabled"
  }
}
