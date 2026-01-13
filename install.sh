#!/bin/bash

DESKFILE="./fork_notes.desktop"
BIN="./fork_notes"
ICON="./icon.svg"

if [[ -f "$DESKFILE" && -f "$BIN" ]]; then
  echo "ok"
else
  echo "please run on unziped folder"
fi

cp "${DESKFILE}" ~/.local/share/applications/ &&\
cp "${ICON}" ~/.local/share/icons/fork-notes-icon.svg

echo "Installing binary to /usr/local/bin (sudo required)..."
sudo cp "${BIN}" /usr/local/bin/fork_notes
sudo chmod +x /usr/local/bin/fork_notes

echo "Installation complete! You can now find 'Fork Notes' in your menu."

