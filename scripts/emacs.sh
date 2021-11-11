#!/usr/bin/env bash
set -euo pipefail

# Install emacs from emacs-plus formule.
brew tap d12frosted/emacs-plus
# NOTE: the following line uses native compilation (will built from sources).
brew install emacs-plus@28 --with-xwidgets --with-modern-doom3-icon --with-native-comp

# NOTE: alternatively try to build from:
# https://github.com/jimeh/build-emacs-for-macos
# ./build-emacs-for-macos feature/native-comp --native-full-aot
# Also check for working commits:
# https://github.com/jimeh/build-emacs-for-macos/issues/6
