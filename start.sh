#!/bin/bash

# Load default environment variables
load_envs

# Load directories
load_dirs

# Load services
load_services

# Load updates
load_updates

# Start services
supervisord
