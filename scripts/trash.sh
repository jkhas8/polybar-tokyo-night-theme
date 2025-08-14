#!/bin/bash

# Count items in trash
TRASH_DIR="$HOME/.local/share/Trash/files"
if [ -d "$TRASH_DIR" ]; then
    count=$(ls -1 "$TRASH_DIR" 2>/dev/null | wc -l)
    if [ "$count" -gt 0 ]; then
        echo "$count"
    else
        echo ""
    fi
else
    echo ""
fi