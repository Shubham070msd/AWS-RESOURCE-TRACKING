#!/bin/bash

########################
# Author: Manjunath
# Date:  Aug 2023
# version: v1
# This script will report the AWS resource usage
#######################

set -x   # It will put your script in debug mode and shows the executed commands as output.

# AWS resources to track #

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

# Lists S3 buckets, lists all user-owned buckets

echo "Listing S3 buckets"
aws s3 ls > S3resourceTracker  # Redirecting output to a file S3resourceTracker

# Lists all EC2 instances available in my aws account, including running, stopped, and terminated instances
echo "Listing EC2 instances"

#aws ec2 describe-instances
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' > EC2resourceTracker # Redirecting output to a file EC2resourceTracker, it will give any number of instance IDs which are available

# Lists all the  Lambda functions, displays list of all functions for the current user
echo "Listing Lambda Functions"
aws lambda list-functions > LambdaResourceTracker # Redirecting output to a file LambdaResourceTracker

# List all the IAM users in the current account
echo "Listing IAM Users"
aws iam list-users > IAMUserResourceTracker  # Redirecting output to a file IAMUserResourceTracker
