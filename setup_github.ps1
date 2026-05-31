# Run from inside the proj1 folder in PowerShell.
# Requirements: git (https://git-scm.com) and gh CLI (https://cli.github.com)

$RepoName = "elec305-5t-ota-design"

Write-Host "Initializing git repo..." -ForegroundColor Cyan

git init
git config user.email "az60@rice.edu"
git config user.name "Anthony Zhang"
git branch -M main
git add .
git commit -m "Initial commit: 5T-OTA high-speed and low-power designs"

Write-Host "Creating GitHub repo and pushing..." -ForegroundColor Cyan

gh repo create $RepoName --public --source=. --remote=origin --push

$User = gh api user --jq ".login"
Write-Host ""
Write-Host "Done! Repo live at: https://github.com/$User/$RepoName" -ForegroundColor Green
