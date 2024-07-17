#!/bin/bash

# This script sets up a Vue.js project on Linux and macOS

# Function to read project name if not provided
if [ -z "$1" ]; then
    read -p "Enter project name: " projectName
else
    projectName=$1
fi

# Install Vue CLI globally if not already installed
if ! command -v vue &> /dev/null; then
    npm install -g @vue/cli
fi

# Create a new Vue.js project
vue create $projectName
