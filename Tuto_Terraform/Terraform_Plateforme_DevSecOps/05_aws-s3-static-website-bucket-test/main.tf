provider "aws" {
    region = "us-west-2"
}

module "website_s3_bucket" {
    source = "./modules/aws-s3-static-website-bucket"
    bucket_name = "opeyemi-opeyemi"
}