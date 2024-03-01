#!/bin/bash

DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
FILES=(
"bin"
".bash_aliases"
".bash_logout"
".bashrc"
".gitconfig"
".inputrc"
".profile"
".sqliterc"
)

# Create a symbolic link if it doesn't exist
for f in "${FILES[@]}"; do
    if [ ! -e "$HOME/$f" ]; then
        ln -s "$DOTFILES_DIR/$f" "$HOME/$f"
    fi
done

chmod +x ./bin/datedir
chmod +x ./bin/ticktack
