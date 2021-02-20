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

# kotlin
echo -e "\nInstalling kotlin:"
# NOTE: also you need to install kotlin-language-server manually (also add to PATH).
# https://github.com/fwcd/kotlin-language-server
brew install ktlint

# c
echo -e "\nInstalling c:"
brew install glslang

# latex
echo -e "\nInstalling latex:"
brew install texlab
