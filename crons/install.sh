#!/bin/bash

SOURCE_DIR="$(pwd)"
DEST_DIR="/usr/local/bin"

FILES=("setup-cron" "cronjobs")

for file in "${FILES[@]}"; do
	# Makes sure the script is executable
	if [[ "$file" == "setup-cron.sh" ]]; then
		sudo chmod +x "$SOURCE_DIR/$file"
	fi

	# Removes existing symlinks
	if [[ -L "$DEST_DIR/$file" || -e "$DEST_DIR/$file" ]]; then
		rm "$DEST_DIR/$file"
	fi

	sudo ln -s "$SOURCE_DIR/$file" "$DEST_DIR/$file"
done

echo "Files symlinked to $DEST_DIR"
