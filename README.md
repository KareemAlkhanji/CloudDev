Here is everything combined into a single **README.md** file:

```markdown
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
```

This will open a browser window where you can log in to your Google Cloud account. After successful authentication, return to your terminal.

### 2. Cloning the Repository

Clone the repository to your local machine using the following command:

```bash
git clone https://github.com/KareemAlkhanji/CloudDev.git
cd CloudDev
```

This will download all the scripts and resources to your local machine.

### 3. Configuring Your Project

Open the `deploy_vm.sh` script in a text editor and update the following variables with your Google Cloud project details:

- `PROJECT_ID`: The project ID for your Google Cloud project.
- `ZONE`: The Google Cloud zone where you want to deploy your VM instance (e.g., `europe-central2-c`).
- `INSTANCE_NAME`: The name you wish to assign to your VM instance (e.g., `kareem-vm`).

Example:

```bash
PROJECT_ID="your-project-id"
ZONE="your-zone"
INSTANCE_NAME="your-vm-name"
```

### 4. Running the Deployment Script

Once you’ve updated the script, run it to create the Google Cloud VM and configure the necessary firewall rules:

```bash
bash deploy_vm.sh
```

The script will:
- Create a Google Cloud VM with the specified configurations.
- Set up firewall rules to allow HTTP and HTTPS traffic.
- Output the external IP address of your new VM.

### 5. Verifying the Deployment

After running the script, you should see an output similar to the following:

```bash
Deployment complete. VM and firewall rule are set up!
External IP: 34.116.180.81
```

This external IP address is where your VM can be accessed. Open a web browser and visit the IP address to verify that the Nginx web server is running.

### 6. Accessing the Web Server

Once the VM is deployed, you can access the Nginx server by entering the external IP address of the VM in a browser:

```text
http://34.116.180.81
```

You should see the default "Welcome to Nginx" page hosted on your newly deployed VM.
```

This is the complete README file with all the details and instructions you need. You can copy-paste this into your repository's README file on GitHub.
