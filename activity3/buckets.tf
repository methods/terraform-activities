resource "google_storage_bucket" "terra-bucket" {
  name          = "hussein-${terraform.workspace}-bucket"
  location      = "US"
  force_destroy = true
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "hussein-${terraform.workspace}-bucket"
  acl    = "private"

  tags = {
    Name        = "Object storage bucket"
    Environment = "Dev"
  }
}
