#!/usr/bin/env bash
set -euo pipefail

# Install emacs from emacs-plus formule.
brew tap d12frosted/emacs-plus
# NOTE: the following line uses native compilation (will built from sources).
brew install emacs-plus@28 --with-modern-doom3-icon --with-native-comp
