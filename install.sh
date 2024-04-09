#!/bin/env sh
cd "$(dirname "${BASH_SOUSE:-$0}")/files" || exit
script_dir=$(pwd)

for file in *; do
    echo "Linking $file"
    ln -sf "$script_dir/$file" "$HOME/.${file}"
done
