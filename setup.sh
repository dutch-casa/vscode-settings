#!/bin/bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Detect OS for settings path
case "$(uname)" in
  Darwin) VSCODE_DIR="$HOME/Library/Application Support/Code/User" ;;
  Linux)  VSCODE_DIR="$HOME/.config/Code/User" ;;
  *)      echo "Unsupported OS"; exit 1 ;;
esac

# Symlink settings + keybindings
mkdir -p "$VSCODE_DIR"
ln -sf "$SCRIPT_DIR/settings.json" "$VSCODE_DIR/settings.json"
ln -sf "$SCRIPT_DIR/keybindings.json" "$VSCODE_DIR/keybindings.json"
echo "Symlinked settings.json and keybindings.json"

# Install extensions
echo "Installing extensions..."
cat "$SCRIPT_DIR/extensions.txt" | xargs -L 1 code --install-extension
echo "Done."
