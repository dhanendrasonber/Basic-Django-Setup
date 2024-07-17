param (
    [string]$projectName
)

if (-not $projectName) {
    $projectName = Read-Host "Enter project name"
}

# Install Create React App globally if not already installed
if (-not (Get-Command "create-react-app" -ErrorAction SilentlyContinue)) {
    npm install -g create-react-app
}
 
# Create a new React project
create-react-app $projectName
