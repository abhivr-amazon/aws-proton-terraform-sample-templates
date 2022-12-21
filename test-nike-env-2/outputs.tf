/*
This file is managed by AWS Proton. Any changes made directly to this file will be overwritten the next time AWS Proton performs an update.

To manage this resource, see AWS Proton Resource: arn:aws:proton:us-east-1:101381735630:environment/test-nike-env-2

If the resource is no longer accessible within AWS Proton, it may have been deleted and may require manual cleanup.
*/

output "S3bucketARN" {
  value = aws_s3_bucket.b.arn
}
