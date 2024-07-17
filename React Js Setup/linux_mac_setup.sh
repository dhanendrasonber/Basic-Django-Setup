#!/bin/bash

# This script sets up a React project on Linux and macOS

# Function to read project name if not provided
if [ -z "$1" ]; then
    read -p "Enter project name: " projectName
else
    projectName=$1
fi

# Install Create React App globally if not already installed
if ! command -v create-react-app &> /dev/null; then
    npm install -g create-react-app
fi

# Create a new React project
create-react-app $projectName
