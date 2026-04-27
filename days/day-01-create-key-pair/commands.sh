#!/bin/bash
# Day 01 — Create Key Pair via AWS CLI
# Equivalent of what we did in the console

# Create key pair and save private key locally
aws ec2 create-key-pair \
  --key-name my-aws-key \
  --query 'KeyMaterial' \
  --output text > ~/.ssh/my-aws-key.pem

# Lock down permissions (required for SSH to work)
chmod 400 ~/.ssh/my-aws-key.pem

# Verify key pair exists in AWS
aws ec2 describe-key-pairs --key-names my-aws-key

# List all key pairs in your account
aws ec2 describe-key-pairs --query 'KeyPairs[*].KeyName'
