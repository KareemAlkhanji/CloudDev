# Cloud Development Project

This repository contains the scripts and resources for the Cloud Development project.

## Project Overview

This project involves automating the creation of a Google Cloud VM instance, configuring firewall rules, and deploying a simple web server using Nginx. The VM is configured using a startup script that automatically installs and runs Nginx.

### Scripts Included

- **deploy_vm.sh**: A script that automates the creation of the VM instance on Google Cloud with the necessary configurations.
- **startup-script.sh**: A startup script that installs Nginx, starts the service, and ensures it starts automatically on boot.

## Requirements

- Google Cloud account and project.
- Google Cloud SDK installed on your local machine.

## How to Use the Scripts

### 1. Setting Up Google Cloud SDK

Before running the scripts, ensure that you have the Google Cloud SDK installed and authenticated. To authenticate, run the following command:

```bash
gcloud auth login
