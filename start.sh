#!/bin/bash
#
# Example start.sh script
#

# Load default environment variables
image_env || exit 1

# Conncet directories and files
image_map || exit 1

# Install updates if neded
image_update

# Start services
image_services_start || exit 1

# Enable output from logfile and hold
#journalctl -u nginx.service -f
journalctl -f
