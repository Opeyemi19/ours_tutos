# AWS S3 static website bucket

This module provisions AWS S3 buckets configured for static website hosting.

## Usage

```hcl
module "<module name>" {
    source = "path of your module"
    bucket_name = "<UNIQ BUCKET NAME>"
    tags = {
        key   = "<value>"
    }
}
```

When your bucket is created, upload an `index.html` file and an `error.html` file in your bucket.