#!/bin/bash

# This script sets up a Node.js project on Linux and macOS

# Function to read project name if not provided
if [ -z "$1" ]; then
    read -p "Enter project name: " projectName
else
    projectName=$1
fi

# Create a new directory for the project
mkdir $projectName
cd $projectName

# Initialize a new Node.js project
npm init -y

# Install Express.js as an example dependency
npm install express
