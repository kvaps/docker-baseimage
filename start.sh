#!/bin/bash
#
# Example start.sh script
#

# Load default environment variables
image_env || exit 1

# Install updates if neded
image_update

# Conncet directories and files
image_stor || exit 1

# Start services
image_services_start || exit 1

# Enable output from logfile and hold
#journalctl -u nginx.service -f
journalctl -f
