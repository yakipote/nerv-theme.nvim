-- Example LazyVim configuration for NERV Theme
-- Add this to your LazyVim plugins configuration

return {
  -- Add NERV Theme
  {
    "your-username/nerv-theme.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  
  -- Set as default colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "nerv",
    },
  },
}