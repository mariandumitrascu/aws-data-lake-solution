#!/bin/bash

aws s3 cp ./dist s3://$DEPLOY_BUCKET-$AWS_REGION/data-lake/$VERSION_CODE --recursive --acl bucket-owner-full-control