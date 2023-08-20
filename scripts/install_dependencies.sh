#!/bin/bash

# Function to install all dependencies.
install_backend() {
    cd "$(dirname "$0")"/../server || exit 1
    pip install -r requirements.txt
}

# Function to start the frontend
install_frontend() {
    cd "$(dirname "$0")"/../client || exit 1
    npm i
}

# Install both backend and frontend in parallel
install_backend & install_frontend &

# Wait for both processes to complete
wait