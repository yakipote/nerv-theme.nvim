local M = {}

function M.setup(opts)
  opts = opts or {}
  
  -- Set the colorscheme
  vim.cmd("colorscheme nerv")
end

return M