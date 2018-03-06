variable "s3_bucket_name" {
  description = "Name of the S3 Bucket to server as backend"
  default     = "tfstatetestename0001"
}

variable "dynamodb_table_name" {
  description = "Name of the DynamoDB Table to use state lock feature"
  default     = "tfstatetestename0001"
}
