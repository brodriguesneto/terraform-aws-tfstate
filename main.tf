terraform {
  required_version = ">= 0.11.3"
}

resource "aws_s3_bucket" "tfstate" {
  bucket = "${var.s3_bucket_name}"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = false
  }

  tags {
    Name = "Terraform Backend Module"
  }
}

resource "aws_dynamodb_table" "tfstate" {
  name           = "${var.dynamodb_table_name}"
  hash_key       = "LockID"
  read_capacity  = 20
  write_capacity = 20

  attribute {
    name = "LockID"
    type = "S"
  }

  tags {
    Name = "Terraform Backend Module"
  }
}
