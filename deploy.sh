#!/bin/bash

# My S3 deploy script
BUCKET="hani-cloud-portfolio"

echo "Starting deployment..."
aws s3 sync . s3://$BUCKET --exclude "*.sh"
echo "Deployment complete!"
echo "Files in bucket:"
aws s3 ls s3://$BUCKET

