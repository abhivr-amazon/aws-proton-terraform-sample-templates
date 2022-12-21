/*
This file is managed by AWS Proton. Any changes made directly to this file will be overwritten the next time AWS Proton performs an update.

To manage this resource, see AWS Proton Resource: arn:aws:proton:us-east-1:101381735630:environment/test-nike-env-2

If the resource is no longer accessible within AWS Proton, it may have been deleted and may require manual cleanup.
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
