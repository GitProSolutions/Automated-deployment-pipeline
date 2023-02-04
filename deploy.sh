#!/bin/bash

# Update the server

sudo apt-get update -y

# Install Jenkins

sudo apt-get install -y default-jdk
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install -y jenkins

# Step 1: Start Jenkins

sudo systemctl start jenkins

# Step 2: Enable auto-start for Jenkins

sudo systemctl enable jenkins

# Step 3: Install Git

sudo apt-get install -y git

# Step 4: Clone the web application repository

git clone https://github.com/[YOUR_USERNAME]/[YOUR_REPO].git

# Step 5: Install Apache

sudo apt-get install -y apache2

# Step 6: Copy the application files to the Apache root directory

sudo cp -r [YOUR_REPO]/* /var/www/html/

# Step 7: Restart Apache

sudo systemctl restart apache2

# Step 8:  Create a Jenkins job to automate the deployment process
# Step 9:  Open your web browser and navigate to http://<your_server_ip>:8080
# Step 10: Follow the steps to set up Jenkins and create a new job
# Step 11: In the "Build Triggers" section, select "Poll SCM" and specify a schedule (e.g. H/15 * * * *)
# Step 12: In the "Build" section, select "Execute shell" and enter the following command:
# Step 13: sudo cp -r [YOUR_REPO]/* /var/www/html/ && sudo systemctl restart apache2
# Step 14: Save the job and build it to test the deployment pipeline
