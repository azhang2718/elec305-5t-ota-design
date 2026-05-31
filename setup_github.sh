#!/bin/bash
# Run this from inside the proj1 folder to create the GitHub repo and push everything.
# Requirements: git and gh CLI installed (https://cli.github.com/)

set -e

REPO_NAME="elec305-5t-ota-design"
GITHUB_USER="$(gh api user --jq .login)"

echo "Setting up git repo as $GITHUB_USER/$REPO_NAME ..."

git init
git config user.email "az60@rice.edu"
git config user.name "Anthony Zhang"
git branch -M main
git add .
git commit -m "Initial commit: 5T-OTA high-speed and low-power designs

- High-speed topology: fu = 226.8 MHz, DC gain = 40.5 dB
- Low-power topology: fu = 734.7 kHz, DC gain = 42.3 dB
- Schematics designed in xschem (sky130 130nm process)
- Simulated with ngspice"

gh repo create "$REPO_NAME" --public --source=. --remote=origin --push

echo ""
echo "Done! Repository live at: https://github.com/$GITHUB_USER/$REPO_NAME"
