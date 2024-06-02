#!/usr/bin/env bash

rm -r personnages/

sudo apt-get update

# Install the cron package
sudo apt-get install cron

# Start the cron service
sudo service cron start

# Check the status of the cron service
sudo service cron status

# Define the script path
SCRIPT_PATH="$(pwd)/script1.sh"

# Define the crontab entry
CRON_ENTRY="*/5 * * * * /bin/bash $SCRIPT_PATH $HOME/"

# Add the entry to crontab
(crontab -l; echo "$CRON_ENTRY" ) | crontab -
