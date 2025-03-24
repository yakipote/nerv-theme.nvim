# NERV Theme for Neovim

A Neovim colorscheme inspired by the NERV console design from Neon Genesis Evangelion.

![NERV Theme Preview](/workspace/nerv-theme-preview.png)

## Features

- Dark theme with NERV-inspired colors
- Optimized for Treesitter
- Support for popular plugins
- Terminal colors
- Designed to look like the NERV command center consoles

## Installation

### Using [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "your-username/nerv-theme.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
}
```

### Using [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use "your-username/nerv-theme.nvim"
```

## Usage

```lua
-- Lua
vim.cmd.colorscheme "nerv"
```

Or in your init.lua with lazy.nvim:

```lua
return {
  "your-username/nerv-theme.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    vim.cmd.colorscheme "nerv"
  end,
}
```

## LazyVim Configuration

Add this to your LazyVim config:

```lua
-- In your LazyVim config
{
  "your-username/nerv-theme.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
}

-- Then in your colorscheme.lua or init.lua
{ "LazyVim/LazyVim", opts = { colorscheme = "nerv" } }
```

## License

MIT