provider "aws" {
  region = "sa-east-1"
}

module "backend" {
  source              = "../.."
  s3_bucket_name      = "tfstatetestename0001"
  dynamodb_table_name = "tfstatetestename0001"
}
