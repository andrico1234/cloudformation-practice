#!/bin/bash

BUCKET_NAME="static-game-cloudformation"
ERROR_DESCRIPTION="NoSuchBucket"

echo "Checking if bucket exists..."
if aws s3 ls "s3://$BUCKET_NAME" 2>&1 | grep -q $ERROR_DESCRIPTION; then
  echo "Creating bucket..."
  aws s3 mb s3://$BUCKET_NAME
else
  echo "Bucket exists!"
fi

echo "Packaging template"
aws cloudformation package \
  --template-file ./cloudformation/template.yml \
  --s3-bucket $BUCKET_NAME \
  --output-template-file ./cloudformation/output/template-generate.yml

echo "Deploying template"
aws cloudformation deploy \
  --template-file ./cloudformation/output/template-generate.yml \
  --stack-name static-site-stack
