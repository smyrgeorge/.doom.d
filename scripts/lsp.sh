#!/usr/bin/env bash
set -euo pipefail

npm i -g pyright
npm i -g bash-language-server
npm i -g dockerfile-language-server-nodejs

brew install rust-analyzer
brew upgrade rust-analyzer
