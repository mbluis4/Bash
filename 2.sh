#!/bin/bash

IPADD=aws --region us-east-1 ec2 describe-instances --filters "Name=instance-state-name,Values=running" "Name=instance-id,Values=i-0ec0bad8bcbc3d0c9" --query 'Reservations[*].Instances[*].[PublicIpAddress]' --output text
