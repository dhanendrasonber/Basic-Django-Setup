#!/bin/bash

# This script is compatible with Linux and macOS

# Function to read project name if not provided
if [ -z "$1" ]; then
    read -p "Enter project name: " projectName
else
    projectName=$1
fi

# Create virtual environment (Python 3)
python3 -m venv venv

# Activate virtual environment
source venv/bin/activate

# Install Django
pip install django

# Install Django REST framework
pip install djangorestframework

# Start Django project
django-admin startproject $projectName

# Instructions to run the script
echo "To run the script, use the following commands:"
echo "chmod +x linux_mac_setup.sh"
echo "./setup_django_project.sh <projectName>"
