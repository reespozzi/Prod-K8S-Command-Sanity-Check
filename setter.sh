#!/usr/bin/env bash
set -e

cd 
if [[ -f ".zshrc" ]];then 
  read -q "deleteFile?-----  This will delete your current ~/.zshrc file. Continue? [y/n]  ----- "
  if [[ ${deleteFile} == "y" ]];then
    printf "\nExecuting...\n"
    rm .zshrc
  else
    printf "\nCancelled $1."
  fi
fi
cat ./Prod-K8S-Command-Sanity-Check/file >> ~/.zshrc
printf "Done!"
exec zsh