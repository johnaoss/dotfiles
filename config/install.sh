#!/bin/sh

# Installs all dotfiles in the dotfiles directory using GNU Stow
for dir in */
do
	echo 'Installing' ${dir%*/}'...'
	stow -t ~ ${dir} --target=$HOME
done
