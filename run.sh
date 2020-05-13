#!/bin/bash
cwd=$(pwd -P)
basedir="$(dirname "${BASH_SOURCE[0]}")"
target_folder="${basedir}/system${cwd}"
target_file="${target_folder}/run.sh"

# if ask "Question?"; then echo "yes"; else echo "no"; fi
function ask(){
	read -p "$* " -n 1 -r response
	echo
	[[ $response =~ ^[Yy]$ ]]
}

if [ -f "$target_file" ]; then
    $target_file
else
	prompt="No run script for ${cwd}. Wanna make it? y/N"
	if ask $prompt; then source "${basedir}/edit.sh"; fi
fi
