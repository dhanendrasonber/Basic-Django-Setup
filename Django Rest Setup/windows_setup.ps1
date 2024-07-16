param (
    [string]$projectName
)

if (-not $projectName) {
    $projectName = Read-Host "Enter project name"
}

# Create virtual environment (Python 3)
python -m venv venv

# Activate virtual environment
.\venv\Scripts\Activate

# Install Django REST framework
pip install djangorestframework

# Start Django project
django-admin startproject $projectName
