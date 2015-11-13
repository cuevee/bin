#!/bin/bash

set -e

echo "Welcome! Give up your killercode creds, man, so I don't have to interrupt you.\n"

echo "Username: \c"
read USERNAME
echo "Password: \c"
read -s PASSWORD

echo "Installing babushka..."
sh -c "$(curl https://babushka.me/up)" < /dev/null
echo "Done."

echo "Installing hombrew..."
babushka homebrew
echo "Done."

echo "Installing XCode Command Line Tools"
if [[ ! -x /usr/bin/gcc ]; then
  echo "Info  | Install  | xcode"
  xcode-select --install
fi
echo "Done."

# Modify the PATH
export PATH=/usr/local/bin:$PATH

echo "Cloning dotfiles"
echo "Done."
