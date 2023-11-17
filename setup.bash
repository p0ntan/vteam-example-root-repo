#!/usr/bin/env bash
#
# Put code here to build and setup the whole system
#

# Download all the repos needed
git clone git@github.com:p0ntan/vteam-example-bike.git
git clone git@github.com:p0ntan/vteam-example-simple-map.git

# Start the system
docker-compose up -d --build