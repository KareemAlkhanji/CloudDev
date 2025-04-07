#!/bin/bash

# This script will deploy a Google Cloud VM with specific requirements

# Set project
PROJECT_ID="my-cloud-dev-project"
ZONE="us-central1-a"
INSTANCE_NAME="my-instance"

# Create VM with 2 vCPUs, 8GB RAM, and 250GB storage
gcloud compute instances create $INSTANCE_NAME \
  --zone=$ZONE \
  --project=$PROJECT_ID \
  --image-family=ubuntu-2004-lts \
  --image-project=ubuntu-os-cloud \
  --machine-type=n1-standard-2 \
  --boot-disk-size=250GB \
  --tags=http-server,https-server

# Reserve a static external IP address
gcloud compute addresses create my-static-ip --region=$ZONE

# Create a firewall rule to allow HTTP and SSH access
gcloud compute firewall-rules create default-allow-http-ssh \
  --allow=tcp:22,tcp:80 \
  --target-tags=http-server,https-server \
  --description="Allow HTTP and SSH access"

echo "Deployment complete. VM and firewall rule are set up!"
