# VS Code Settings

Opinionated VS Code config with wildcharm-matched theme, vim keybindings, and LSP setup for TypeScript/React, Go, and C++23.

## Setup on a new machine

```bash
git clone https://github.com/dutch-casa/vscode-settings.git ~/dotfiles/vscode
cd ~/dotfiles/vscode
./setup.sh
```

This will:
- Symlink `settings.json` into your VS Code user config directory
- Install all extensions from `extensions.txt`

Works on macOS and Linux.

## Updating

After pulling changes, settings apply immediately (it's a symlink). If `extensions.txt` changed, re-run:

```bash
cat ~/dotfiles/vscode/extensions.txt | xargs -L 1 code --install-extension
```

## What's in here

**Languages:** clangd (C++23), gopls (Go), vtsls (TypeScript/React), ESLint, Biome, Prettier, Tailwind, Python, Elixir, Docker, YAML, TOML, LaTeX

**Theme:** Wildcharm-matched colors on pure black background

**Vim:** Full keybindings — `jk`/`jj` escape, black hole d/c/x, `<space>` leader with LSP bindings, debug bindings

**Debug:** CodeLLDB (C++), Delve (Go), built-in JS debugger
