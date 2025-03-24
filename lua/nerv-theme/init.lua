local M = {}

function M.setup(opts)
  opts = opts or {}
  
  -- Set the colorscheme
  vim.cmd("colorscheme nerv")
  
  -- Setup plugins if they exist
  local plugins = {
    "notify",
  }
  
  for _, plugin in ipairs(plugins) do
    local ok, plugin_module = pcall(require, "nerv-theme.plugins." .. plugin)
    if ok then
      plugin_module.setup()
    end
  end
  
  -- Apply any user options
  if opts.transparent_background then
    vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
  end
end

-- Expose plugin modules for direct access
M.plugins = {
  notify = require("nerv-theme.plugins.notify"),
}

return M