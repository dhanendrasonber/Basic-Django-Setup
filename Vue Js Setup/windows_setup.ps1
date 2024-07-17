param (
    [string]$projectName
)

if (-not $projectName) {
    $projectName = Read-Host "Enter project name"
}

# Install Vue CLI globally if not already installed
if (-not (Get-Command "vue" -ErrorAction SilentlyContinue)) {
    npm install -g @vue/cli
}

# Create a new Vue.js project
vue create $projectName
