#!/bin/sh

# Installs all dotfiles in the dotfiles directory using GNU Stow
for dir in */
do
	stow -t ~ ${dir}
	echo 'Installing' ${dir%*/}'...'
done
