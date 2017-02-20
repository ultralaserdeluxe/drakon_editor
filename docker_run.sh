#!/bin/sh

# Get IP
ip=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')

# Add IP to allowed X clients
xhost + $ip

# Run
docker run -e DISPLAY=$ip:0 "drakon_editor:latest"
