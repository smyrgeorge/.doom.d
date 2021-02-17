#!/usr/bin/env bash
set -euo pipefail

# latex
echo -e "Installing latex:"
brew install basictex
brew install tex-live-utility

# other tools
echo -e "\nInstalling other tools:"
brew install aspell bat curl editorconfig exa git-delta hugo jq
brew install inetutils git vim qemu ripgrep wget k9s lens

# amethys (tilling window manager)
echo -e "\nInstalling Amethyst:"
brew install amethyst
