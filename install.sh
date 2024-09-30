#!/bin/bash

if [ -f /workspaces/.codespaces/.persistedshare/dotfiles/.gitconfig ]; then
    ln -s /workspaces/.codespaces/.persistedshare/dotfiles/.gitconfig ~/.gitconfig
else
    echo "Error: Archivo .gitconfig not found"
fi


gh alias set cd '!gh config set current-org "$1" 2>/dev/null'
gh alias set pwd '!gh config get current-org'
#gh extension install github/gh-classroom
#gh extension install github/gh-copilot
gh extension install gh-cli-for-education/gh-org-teams
gh extension install crguezl/gh-org-clone