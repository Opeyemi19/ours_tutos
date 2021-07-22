output "website_bucket_name" {
    description = "Name (id) of the bucket"
    value       = module.website_s3_bucket.name
}
  
output "website_endpoint" {
    description = "Domain name of the bucket"
    value       = module.website_s3_bucket.website_endpoint
}