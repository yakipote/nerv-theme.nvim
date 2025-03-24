# NERV Theme for Neovim

A Neovim colorscheme inspired by the NERV console design from Neon Genesis Evangelion.

![NERV Theme Preview](https://raw.githubusercontent.com/yakipote/nerv-theme.nvim/main/preview.png)

## Features

- Dark theme with NERV-inspired colors
- Optimized for Treesitter
- Support for popular plugins
- Terminal colors
- Designed to look like the NERV command center consoles
- NERV-styled notifications with nvim-notify integration

## Installation

### Using [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "yakipote/nerv-theme.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
}
```

### Using [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use "yakipote/nerv-theme.nvim"
```

## Usage

```lua
-- Lua
vim.cmd.colorscheme "nerv"
```

Or in your init.lua with lazy.nvim:

```lua
return {
  "yakipote/nerv-theme.nvim",
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
  "yakipote/nerv-theme.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
}

-- Then in your colorscheme.lua or init.lua
{ "LazyVim/LazyVim", opts = { colorscheme = "nerv" } }
```

## NERV-styled Notifications

This theme includes custom styling for [nvim-notify](https://github.com/rcarriga/nvim-notify) to make notifications look like NERV console alerts.

### Setup with nvim-notify

```lua
-- Install nvim-notify
{
  "rcarriga/nvim-notify",
  config = function()
    -- The theme will automatically configure nvim-notify
    -- No additional setup required!
  end,
}

-- Then in your code, you can use:
vim.notify("Evangelion Unit-01 activated", vim.log.levels.INFO, {
  title = "NERV HQ"
})
```

### Notification Features

- NERV-styled borders and colors
- Random NERV ID codes for each notification
- Terminal-like status indicators
- Custom icons for different notification levels

## License

MIT