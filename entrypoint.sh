#!/bin/bash

# Activate the virtual environment
source /opt/venv/bin/activate

# Set environment variables
export RASA_SERVER=true
export RASA_ACTIONS=true

# Start the Rasa server
rasa run --enable-api --cors * --debug