#!/usr/bin/env bash
set -euo pipefail

# python
echo -e "Installing python:"
npm i -g pyright
pip install black

# bash
echo -e "\nInstalling bash:"
npm i -g bash-language-server

# docker
echo -e "\nInstalling docker:"
npm i -g dockerfile-language-server-nodejs

# rust
echo -e "\nInstalling rust:"
brew install rust-analyzer
brew upgrade rust-analyzer

# kotlin
echo -e "\nInstalling kotlin:"
brew install ktlint
brew upgrade ktlint

# c
echo -e "\nInstalling c:"
brew install glslang
brew upgrade glslang
