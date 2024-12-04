#!/bin/bash

# Clean and install a new parabank war file
# Ignoring tests
mvn -Dmaven.test.skip=true clean install

# Build the Docker image
docker build -t parabank-local/parabank:latest .

# Run the Docker container
docker run -d --shm-size=512m -p 8080:8080 --name parabank parabank-local/parabank:latest