#!/bin/bash

# Function to start the backend
start_backend() {
    cd "$(dirname "$0")"/../server || exit 1
    uvicorn main:app --reload --port 3001
}

# Function to start the frontend
start_frontend() {
    cd "$(dirname "$0")"/../client || exit 1
    npm run start
}

# Start both backend and frontend in parallel
start_backend & start_frontend &

# Wait for both processes to complete
wait