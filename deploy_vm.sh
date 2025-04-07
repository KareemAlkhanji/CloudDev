#!/bin/bash

PROJECT_ID="my-cloud-dev-project"
ZONE="europe-central2-c"
INSTANCE_NAME="kareem-vm"

gcloud compute instances create $INSTANCE_NAME \
  --zone=$ZONE \
  --project=$PROJECT_ID \
  --image-family=debian-12 \
  --image-project=debian-cloud \
  --machine-type=n1-standard-1 \
  --tags=http-server,https-server \
  --metadata=startup-script='#! /bin/bash
        apt update
        apt install -y nginx
        systemctl start nginx
        systemctl enable nginx
    '

gcloud compute firewall-rules create default-allow-http \
  --allow tcp:80 \
  --target-tags=http-server

gcloud compute firewall-rules create default-allow-https \
  --allow tcp:443 \
  --target-tags=https-server

gcloud compute instances describe $INSTANCE_NAME --zone=$ZONE --format='get(networkInterfaces[0].accessConfigs[0].natIP)'
