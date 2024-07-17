param (
    [string]$projectName
)

if (-not $projectName) {
    $projectName = Read-Host "Enter project name"
}

# Create a new directory for the project
New-Item -ItemType Directory -Path $projectName
Set-Location -Path $projectName

# Initialize a new Node.js project
npm init -y

# Install Express.js as an example dependency
npm install express
