# ~/.config/fish/config.fish

if status is-interactive
    # Commands to run in interactive sessions can go here
	
	# Colors for linux terminal
	echo -en "\e]P0121212" # Normal
	echo -en "\e]P1C70031"
	echo -en "\e]P229CF13"
	echo -en "\e]P3D8E30E"
	echo -en "\e]P43449D1"
	echo -en "\e]P58400FF"
	echo -en "\e]P600aaff"
	echo -en "\e]P7E2D1E3"
	echo -en "\e]P85A5A5A" # Bright
	echo -en "\e]P9F01578"
	echo -en "\e]PA6CE05C"
	echo -en "\e]PBF3F79E"
	echo -en "\e]PC97A4F7"
	echo -en "\e]PDC495F0"
	echo -en "\e]PE68F2E0"
	echo -en "\e]PFFFFFFF"
	
	alias ls="exa --color=auto -h"
	alias ll="exa -Ralh"
	alias pacdate="expac --timefmt='%Y-%m-%d %T' '%l\t%n' | sort | tail -n 20"
	alias grep="grep --color=auto"
	alias xterm="xterm -bg black -fg white"
end
	
function fish_prompt
    printf '%s[ %s%s %s%s ]$ %s' (set_color blue) (set_color cyan) $USER (set_color blue) (prompt_pwd) (set_color normal)
end

# Root
#function fish_prompt
#	printf '%s[ %s%s %s%s ]$ %s' (set_color magenta) (set_color red) $USER (set_color magenta) (prompt_pwd) (set_color normal)
#end

function fish_greeting
	python ~/Documents/nsplash/nsplash.py
end

fish_add_path -m ~/.local/bin
export fish_color_command="blue"
export CRYPTOGRAPHY_OPENSSL_NO_LEGACY=1
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
source /opt/miniconda3/etc/fish/conf.d/conda.fish
