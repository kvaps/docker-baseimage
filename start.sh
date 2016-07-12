#!/bin/bash
#
# Example start.sh script
#

# Load default environment variables
source load_envs

# Load directories
source load_dirs

# Install updates if neded
install_updates

# Start services
source start_services

# Enable output from logfile and hold
#journalctl -u nginx.service -f
journalctl -f
