#!/bin/bash
cwd=$(pwd -P)
basedir="$(dirname "${BASH_SOURCE[0]}")"
target_folder="${basedir}/system${cwd}"
target_file="${target_folder}/run.sh"

mkdir -p $target_folder
vim $target_file
chmod 755 $target_file
