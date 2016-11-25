#!/bin/bash
#
# Example start.sh script
#

# Load default environment variables
image_env || exit 1

# Conncet directories and files
image_stor || exit 1

if [ -f '/etc/image/version.conf' ]; then
    # Install updates if neded
    image_update || exit 1
else
    # First run instructions here
    #first_run_script || exit 1

    # Write config version
    echo "0" > /etc/image/version.conf
fi

# Start services
image_services_start || exit 1

# Attach to syslog and hold
journalctl -b -ef
