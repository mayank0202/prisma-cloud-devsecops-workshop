provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    git_commit           = "6632cc4409985219f232afbd7919fdef340bd9ad"
    git_file             = "code/s3.tf"
    git_last_modified_at = "2024-08-14 15:55:56"
    git_last_modified_by = "83959396+mayank0202@users.noreply.github.com"
    git_modifiers        = "83959396+mayank0202"
    git_org              = "mayank0202"
    git_repo             = "prisma-cloud-devsecops-workshop"
    yor_name             = "dev_s3"
    yor_trace            = "ee77b8d1-5928-4ba4-a9cb-aee6bd71db65"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
