output "website_endpoint" {
    description = "Domain name of the bucket"
    value       = aws_s3_bucket.s3_bucket.website_endpoint
}

output "name" {
    description = "Name (id) of the bucket"
    value       = aws_s3_bucket.s3_bucket.id
}