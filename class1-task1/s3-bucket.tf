resource "aws_s3_bucket" "vladlen-evolve" {
  bucket = "vladlen-evolve"
  acl    = "private"

  versioning {
    enabled = true
  }

  tags = {
    Name        = "Vladlen"
    Environment = "Prod"
  }
}