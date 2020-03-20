#!/usr/bin/env bash

# Install stow if needed
if ! command -v stow > /dev/null; then
	case $(uname | tr '[:upper:]' '[:lower:]') in
		darwin*)
			echo "Stow not found, installing" && brew install stow
			;;
		*)
			echo "You must have GNU Stow installed"
			exit 1
			;;
	esac
fi

# Installs all dotfiles in the dotfiles directory using GNU Stow
for dir in */
do
	echo 'Installing' ${dir%*/}'...'
	stow -t ~ ${dir} --target=$HOME
done
