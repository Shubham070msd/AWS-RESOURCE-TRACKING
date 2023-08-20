# AWS Resource Usage Tracker #

## Description ##

This script is designed to track and report the usage of various AWS resources. It gathers information about :

- AWS S3 buckets, 
- EC2 instances, 
- Lambda functions
- IAM users.

The script generates separate output files for each resource.

## Author

- **Author:** Manjunath HUddar
- **Date:**  Aug 2023
- **Version:** v1

## Features ##
1. Lists all S3 buckets in the AWS account and saves the output to a file named S3resourceTracker.
2. Lists all EC2 instances, including running, stopped, and terminated instances, and saves the instance IDs to a file named EC2resourceTracker.
3. Lists all Lambda functions and saves the output to a file named LambdaResourceTracker.
4. Lists all IAM users and saves the output to a file named IAMUserResourceTracker.

## Prerequisites ##
Before running the script, ensure the following prerequisites are met:

1. AWS CLI: Make sure you have the AWS Command Line Interface (CLI) installed. You can download and install it from the AWS CLI website.

2. AWS Credentials: Configure your AWS credentials using the aws configure command. This will require your AWS Access Key ID, Secret Access Key, default region, and output format preference.

3. jq: The script utilizes jq, a command-line JSON processor, for parsing JSON output from AWS CLI commands. You can install jq by following the instructions on the jq website.

## Usage ##
1. Set up your AWS credentials using aws configure if not already done.
2. Make the script executable: chmod +x resource_tracker.sh
3. Run the script: ./resource_tracker.sh


## Output ##
The script will generate the following output files:

- S3resourceTracker: Lists of S3 buckets.
- EC2resourceTracker: Instance IDs of EC2 instances.
- LambdaResourceTracker: List of Lambda functions.
- IAMUserResourceTracker: List of IAM users.


## Note ##

- This script is provided as-is and may need adjustments based on your specific AWS setup.
- The script utilizes the AWS CLI, so ensure you have proper AWS credentials configured.
- The jq command is used for JSON parsing. Make sure jq is installed.


Feel free to customize and enhance this script to fit your needs.

## Execution ##

To execute the script, run the following command:

```bash
./aws_resource_tracker.sh
