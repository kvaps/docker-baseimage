#!/bin/bash
#
# Example start.sh script
#

# Load default environment variables
load_envs || exit 1

# Load directories
load_dirs || exit 1

# Load services
load_services || exit 1

# Install updates if neded
install_updates

# Enable output from logfile
#tail -f -n0 /var/log/messages | grep ' rsyslogd: ' &

# Start services
supervisord
