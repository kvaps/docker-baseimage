#!/bin/bash
#
# Example start.sh script
#

# Load default environment variables
load_envs || exit 1

# Load directories
load_dirs || exit 1

# Install updates if neded
install_updates

# Start services
start_services || exit 1

# Enable output from logfile and hold
#journalctl -u nginx.service -f
journalctl -f
