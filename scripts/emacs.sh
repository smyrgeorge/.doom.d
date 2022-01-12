#!/usr/bin/env bash
set -euo pipefail

# Install emacs from emacs-plus formule.
brew tap d12frosted/emacs-plus

# VERSION 28
brew install emacs-plus@28 --with-xwidgets --with-modern-doom3-icon --with-native-comp

# VERSION 29
brew install emacs-plus@29 --with-xwidgets --with-modern-doom3-icon --with-native-comp

# If you wish to re-install, please uninstall first.
brew uninstall emacs-plus@28
brew uninstall emacs-plus@29

# NOTE: alternatively try to build from:
# https://github.com/jimeh/build-emacs-for-macos
# ./build-emacs-for-macos feature/native-comp --native-full-aot
# Also check for working commits:
# https://github.com/jimeh/build-emacs-for-macos/issues/6
