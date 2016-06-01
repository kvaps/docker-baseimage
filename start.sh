#!/bin/bash
#
# Example start.sh script
#

# Load default environment variables
source load_envs

# Load directories
source load_dirs

# Load services
source load_services

# Install updates if neded
install_updates

# Start services
supervisord
