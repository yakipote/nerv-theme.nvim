return {
  "nerv-theme.nvim",
  name = "nerv",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function(_, opts)
    require("nerv-theme").setup(opts)
  end,
}