#!/usr/bin/env bash
# This script replicates the Nginx configuration from web-01 to web-02

# Sync packages
echo "Syncing packages..."
ssh ubuntu@52.3.253.180 "sudo apt-get update && sudo apt-get install -y nginx"

# Sync Nginx configuration files
echo "Syncing Nginx configuration files..."
scp /etc/nginx/nginx.conf ubuntu@52.3.253.180:/etc/nginx/nginx.conf
scp /etc/nginx/sites-available/default ubuntu@52.3.253.180:/etc/nginx/sites-available/default

# Restart Nginx on web-02 to apply the new configuration
echo "Restarting Nginx on web-02..."
ssh ubuntu@52.3.253.180 "sudo systemctl restart nginx"

echo "Configuration has been successfully replicated to web-02."
