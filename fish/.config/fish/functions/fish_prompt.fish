function fish_prompt
	set_color normal
	echo (pwd | string replace $HOME '~')' '
end
