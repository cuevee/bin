#!/bin/bash

set -e

echo "Welcome! Give up your gitlab creds so I don't have to interrupt you."
echo

# Ask for gitlab creds to we don't need to later
echo "Username:\c"
read USERNAME
echo "Password:\c"
read -s PASSWORD

# Install/update babushka
if [[ -a /usr/local/bin/babushka ]]; then
	babushka babushka
else
	sh -c "$(curl https://babushka.me/up)" < /dev/null
fi

# Clone/update babushka deps
if [[ -d $HOME/.babushka/deps ]]; then
	(cd $HOME/.babushka/deps && git pull)
else
	git clone https://github.com/cuevee/babushka-deps.git $HOME/.babushka/deps
fi

# Install homebrew
babushka homebrew

# Install XCode CLI tools
if [[ ! -x /usr/bin/gcc ]]; then
  echo "Info  | Install  | xcode"
  xcode-select --install
fi
