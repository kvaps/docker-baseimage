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

# Enable output from logfile
#tail -f -n0 /var/log/messages | grep ' rsyslogd: ' &

# Start services
supervisord
