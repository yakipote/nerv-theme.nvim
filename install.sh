#!/bin/bash

# NERV Theme for Neovim installer
echo "Installing NERV Theme for Neovim..."

# Determine Neovim config directory
if [ -d "$HOME/.config/nvim" ]; then
  NVIM_DIR="$HOME/.config/nvim"
elif [ -d "$HOME/.local/share/nvim" ]; then
  NVIM_DIR="$HOME/.local/share/nvim"
else
  echo "Could not find Neovim configuration directory."
  echo "Please install the theme manually."
  exit 1
fi

# Create plugin directory if it doesn't exist
PLUGIN_DIR="$NVIM_DIR/site/pack/plugins/start/nerv-theme.nvim"
mkdir -p "$PLUGIN_DIR"

# Copy theme files
cp -r colors lua LICENSE README.md "$PLUGIN_DIR/"

echo "NERV Theme installed successfully!"
echo "Add 'vim.cmd.colorscheme \"nerv\"' to your Neovim configuration to use the theme."