local M = {}

-- NERV Console inspired color palette
local colors = {
  -- Main colors
  bg = "#0e0e18",           -- Dark blue-black background
  fg = "#f0f0c0",           -- Light yellow-green text
  
  -- Accent colors
  orange = "#ff6000",       -- NERV orange
  red = "#ff3333",          -- Alert red
  green = "#33ff66",        -- Terminal green
  blue = "#3366ff",         -- Info blue
  purple = "#9933ff",       -- Secondary accent
  
  -- UI colors
  black = "#000000",
  dark_gray = "#222233",
  gray = "#444455",
  light_gray = "#666677",
  very_light_gray = "#888899",
  
  -- Special colors
  warning = "#ffcc00",      -- Warning yellow
  error = "#ff0000",        -- Error red
  hint = "#00ffcc",         -- Hint cyan
  info = "#00ccff",         -- Info light blue
  
  -- Additional NERV-inspired colors
  nerv_green = "#00ff66",   -- NERV terminal green
  nerv_orange = "#ff6600",  -- NERV logo orange
  nerv_yellow = "#ffcc33",  -- NERV console yellow
  nerv_red = "#ff3333",     -- NERV alert red
  nerv_blue = "#3399ff",    -- NERV interface blue
}

function M.setup()
  local hi = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  -- Reset all highlights
  vim.cmd("highlight clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end
  
  -- Set colorscheme name
  vim.g.colors_name = "nerv"
  
  -- Editor highlights
  hi("Normal", { fg = colors.fg, bg = colors.bg })
  hi("NormalFloat", { fg = colors.fg, bg = colors.dark_gray })
  hi("Cursor", { fg = colors.bg, bg = colors.fg })
  hi("CursorLine", { bg = colors.dark_gray })
  hi("CursorColumn", { bg = colors.dark_gray })
  hi("ColorColumn", { bg = colors.dark_gray })
  hi("LineNr", { fg = colors.light_gray, bg = colors.bg })
  hi("CursorLineNr", { fg = colors.nerv_orange, bg = colors.dark_gray, bold = true })
  
  -- Syntax highlighting
  hi("Comment", { fg = colors.light_gray, italic = true })
  hi("Constant", { fg = colors.nerv_yellow })
  hi("String", { fg = colors.nerv_green })
  hi("Character", { fg = colors.nerv_green })
  hi("Number", { fg = colors.nerv_orange })
  hi("Boolean", { fg = colors.nerv_orange, bold = true })
  hi("Float", { fg = colors.nerv_orange })
  hi("Identifier", { fg = colors.nerv_blue })
  hi("Function", { fg = colors.blue })
  hi("Statement", { fg = colors.nerv_orange })
  hi("Conditional", { fg = colors.nerv_orange })
  hi("Repeat", { fg = colors.nerv_orange })
  hi("Label", { fg = colors.nerv_yellow })
  hi("Operator", { fg = colors.nerv_yellow })
  hi("Keyword", { fg = colors.nerv_orange, bold = true })
  hi("Exception", { fg = colors.nerv_red })
  hi("PreProc", { fg = colors.purple })
  hi("Include", { fg = colors.purple })
  hi("Define", { fg = colors.purple })
  hi("Macro", { fg = colors.purple })
  hi("PreCondit", { fg = colors.purple })
  hi("Type", { fg = colors.blue })
  hi("StorageClass", { fg = colors.blue })
  hi("Structure", { fg = colors.blue })
  hi("Typedef", { fg = colors.blue })
  hi("Special", { fg = colors.nerv_yellow })
  hi("SpecialChar", { fg = colors.nerv_yellow })
  hi("Tag", { fg = colors.nerv_orange })
  hi("Delimiter", { fg = colors.fg })
  hi("SpecialComment", { fg = colors.light_gray, italic = true, bold = true })
  hi("Debug", { fg = colors.nerv_red })
  hi("Underlined", { fg = colors.blue, underline = true })
  hi("Ignore", { fg = colors.light_gray })
  hi("Error", { fg = colors.nerv_red, bold = true })
  hi("Todo", { fg = colors.nerv_yellow, bold = true })
  
  -- UI elements
  hi("StatusLine", { fg = colors.fg, bg = colors.dark_gray })
  hi("StatusLineNC", { fg = colors.light_gray, bg = colors.dark_gray })
  hi("TabLine", { fg = colors.light_gray, bg = colors.dark_gray })
  hi("TabLineFill", { fg = colors.light_gray, bg = colors.dark_gray })
  hi("TabLineSel", { fg = colors.nerv_orange, bg = colors.bg, bold = true })
  hi("VertSplit", { fg = colors.gray, bg = colors.bg })
  hi("Folded", { fg = colors.light_gray, bg = colors.dark_gray })
  hi("FoldColumn", { fg = colors.light_gray, bg = colors.bg })
  hi("SignColumn", { fg = colors.light_gray, bg = colors.bg })
  hi("NonText", { fg = colors.gray })
  hi("SpecialKey", { fg = colors.gray })
  hi("Visual", { bg = colors.gray })
  hi("VisualNOS", { bg = colors.gray })
  hi("IncSearch", { fg = colors.bg, bg = colors.nerv_orange, bold = true })
  hi("Search", { fg = colors.bg, bg = colors.nerv_yellow })
  hi("MatchParen", { fg = colors.nerv_orange, bold = true, underline = true })
  hi("ModeMsg", { fg = colors.nerv_green })
  hi("MoreMsg", { fg = colors.nerv_green })
  hi("Question", { fg = colors.blue })
  hi("WarningMsg", { fg = colors.warning })
  hi("ErrorMsg", { fg = colors.error })
  hi("Directory", { fg = colors.blue })
  hi("Title", { fg = colors.nerv_orange, bold = true })
  
  -- Diff highlighting
  hi("DiffAdd", { fg = colors.nerv_green, bg = colors.dark_gray })
  hi("DiffChange", { fg = colors.nerv_yellow, bg = colors.dark_gray })
  hi("DiffDelete", { fg = colors.nerv_red, bg = colors.dark_gray })
  hi("DiffText", { fg = colors.nerv_blue, bg = colors.dark_gray })
  
  -- Completion menu
  hi("Pmenu", { fg = colors.fg, bg = colors.dark_gray })
  hi("PmenuSel", { fg = colors.bg, bg = colors.nerv_orange })
  hi("PmenuSbar", { bg = colors.gray })
  hi("PmenuThumb", { bg = colors.light_gray })
  
  -- Spelling
  hi("SpellBad", { fg = colors.nerv_red, underline = true })
  hi("SpellCap", { fg = colors.warning, underline = true })
  hi("SpellLocal", { fg = colors.nerv_green, underline = true })
  hi("SpellRare", { fg = colors.purple, underline = true })
  
  -- Diagnostic
  hi("DiagnosticError", { fg = colors.nerv_red })
  hi("DiagnosticWarn", { fg = colors.warning })
  hi("DiagnosticInfo", { fg = colors.info })
  hi("DiagnosticHint", { fg = colors.hint })
  hi("DiagnosticUnderlineError", { fg = colors.nerv_red, underline = true })
  hi("DiagnosticUnderlineWarn", { fg = colors.warning, underline = true })
  hi("DiagnosticUnderlineInfo", { fg = colors.info, underline = true })
  hi("DiagnosticUnderlineHint", { fg = colors.hint, underline = true })
  
  -- LSP
  hi("LspReferenceText", { bg = colors.gray })
  hi("LspReferenceRead", { bg = colors.gray })
  hi("LspReferenceWrite", { bg = colors.gray })
  hi("LspSignatureActiveParameter", { fg = colors.nerv_orange, bold = true })
  
  -- Treesitter
  hi("@variable", { fg = colors.fg })
  hi("@function", { fg = colors.blue })
  hi("@function.call", { fg = colors.blue })
  hi("@method", { fg = colors.blue })
  hi("@method.call", { fg = colors.blue })
  hi("@constructor", { fg = colors.nerv_orange })
  hi("@parameter", { fg = colors.fg, italic = true })
  hi("@keyword", { fg = colors.nerv_orange, bold = true })
  hi("@keyword.function", { fg = colors.nerv_orange, bold = true })
  hi("@keyword.operator", { fg = colors.nerv_yellow })
  hi("@operator", { fg = colors.nerv_yellow })
  hi("@property", { fg = colors.nerv_blue })
  hi("@field", { fg = colors.nerv_blue })
  hi("@type", { fg = colors.blue })
  hi("@type.builtin", { fg = colors.blue, italic = true })
  hi("@constant", { fg = colors.nerv_yellow })
  hi("@constant.builtin", { fg = colors.nerv_yellow, bold = true })
  hi("@string", { fg = colors.nerv_green })
  hi("@string.escape", { fg = colors.nerv_yellow })
  hi("@number", { fg = colors.nerv_orange })
  hi("@boolean", { fg = colors.nerv_orange, bold = true })
  hi("@comment", { fg = colors.light_gray, italic = true })
  hi("@conditional", { fg = colors.nerv_orange })
  hi("@repeat", { fg = colors.nerv_orange })
  hi("@exception", { fg = colors.nerv_red })
  hi("@include", { fg = colors.purple })
  hi("@tag", { fg = colors.nerv_orange })
  hi("@tag.attribute", { fg = colors.blue })
  hi("@tag.delimiter", { fg = colors.light_gray })
  
  -- NvimTree
  hi("NvimTreeNormal", { fg = colors.fg, bg = colors.bg })
  hi("NvimTreeFolderName", { fg = colors.blue })
  hi("NvimTreeFolderIcon", { fg = colors.nerv_yellow })
  hi("NvimTreeOpenedFolderName", { fg = colors.blue, bold = true })
  hi("NvimTreeEmptyFolderName", { fg = colors.light_gray })
  hi("NvimTreeIndentMarker", { fg = colors.gray })
  hi("NvimTreeSymlink", { fg = colors.nerv_green })
  hi("NvimTreeRootFolder", { fg = colors.nerv_orange, bold = true })
  
  -- Telescope
  hi("TelescopeNormal", { fg = colors.fg, bg = colors.bg })
  hi("TelescopeBorder", { fg = colors.gray, bg = colors.bg })
  hi("TelescopePromptBorder", { fg = colors.gray, bg = colors.dark_gray })
  hi("TelescopeResultsBorder", { fg = colors.gray, bg = colors.bg })
  hi("TelescopePreviewBorder", { fg = colors.gray, bg = colors.bg })
  hi("TelescopePromptNormal", { fg = colors.fg, bg = colors.dark_gray })
  hi("TelescopePromptTitle", { fg = colors.nerv_orange, bold = true })
  hi("TelescopeResultsTitle", { fg = colors.nerv_orange, bold = true })
  hi("TelescopePreviewTitle", { fg = colors.nerv_orange, bold = true })
  hi("TelescopeSelection", { fg = colors.nerv_orange, bg = colors.dark_gray })
  hi("TelescopeSelectionCaret", { fg = colors.nerv_orange, bg = colors.dark_gray })
  
  -- Git
  hi("GitSignsAdd", { fg = colors.nerv_green })
  hi("GitSignsChange", { fg = colors.nerv_yellow })
  hi("GitSignsDelete", { fg = colors.nerv_red })
  
  -- Bufferline
  hi("BufferLineFill", { bg = colors.dark_gray })
  hi("BufferLineBackground", { fg = colors.light_gray, bg = colors.dark_gray })
  hi("BufferLineBufferSelected", { fg = colors.nerv_orange, bg = colors.bg, bold = true })
  hi("BufferLineIndicatorSelected", { fg = colors.nerv_orange, bg = colors.bg })
  
  -- Dashboard
  hi("DashboardHeader", { fg = colors.nerv_orange })
  hi("DashboardCenter", { fg = colors.nerv_yellow })
  hi("DashboardShortcut", { fg = colors.nerv_green })
  hi("DashboardFooter", { fg = colors.light_gray, italic = true })
  
  -- Notify
  hi("NotifyERRORBorder", { fg = colors.nerv_red, bg = colors.black })
  hi("NotifyWARNBorder", { fg = colors.warning, bg = colors.black })
  hi("NotifyINFOBorder", { fg = colors.info, bg = colors.black })
  hi("NotifyDEBUGBorder", { fg = colors.light_gray, bg = colors.black })
  hi("NotifyTRACEBorder", { fg = colors.purple, bg = colors.black })
  
  hi("NotifyERRORIcon", { fg = colors.nerv_red, bg = colors.black })
  hi("NotifyWARNIcon", { fg = colors.warning, bg = colors.black })
  hi("NotifyINFOIcon", { fg = colors.info, bg = colors.black })
  hi("NotifyDEBUGIcon", { fg = colors.light_gray, bg = colors.black })
  hi("NotifyTRACEIcon", { fg = colors.purple, bg = colors.black })
  
  hi("NotifyERRORTitle", { fg = colors.nerv_red, bg = colors.black, bold = true })
  hi("NotifyWARNTitle", { fg = colors.warning, bg = colors.black, bold = true })
  hi("NotifyINFOTitle", { fg = colors.info, bg = colors.black, bold = true })
  hi("NotifyDEBUGTitle", { fg = colors.light_gray, bg = colors.black, bold = true })
  hi("NotifyTRACETitle", { fg = colors.purple, bg = colors.black, bold = true })
  
  hi("NotifyERRORBody", { fg = colors.fg, bg = colors.black })
  hi("NotifyWARNBody", { fg = colors.fg, bg = colors.black })
  hi("NotifyINFOBody", { fg = colors.fg, bg = colors.black })
  hi("NotifyDEBUGBody", { fg = colors.fg, bg = colors.black })
  hi("NotifyTRACEBody", { fg = colors.fg, bg = colors.black })
  
  -- WhichKey
  hi("WhichKey", { fg = colors.nerv_orange })
  hi("WhichKeyGroup", { fg = colors.nerv_yellow })
  hi("WhichKeyDesc", { fg = colors.nerv_blue })
  hi("WhichKeySeperator", { fg = colors.light_gray })
  hi("WhichKeySeparator", { fg = colors.light_gray })
  hi("WhichKeyFloat", { bg = colors.dark_gray })
  hi("WhichKeyValue", { fg = colors.light_gray })
  
  -- Indent Blankline
  hi("IndentBlanklineChar", { fg = colors.gray })
  hi("IndentBlanklineContextChar", { fg = colors.nerv_orange })
  
  -- Alpha
  hi("AlphaHeader", { fg = colors.nerv_orange })
  hi("AlphaButtons", { fg = colors.nerv_yellow })
  hi("AlphaFooter", { fg = colors.light_gray, italic = true })
  
  -- Cmp
  hi("CmpItemAbbr", { fg = colors.fg })
  hi("CmpItemAbbrMatch", { fg = colors.nerv_orange, bold = true })
  hi("CmpItemAbbrMatchFuzzy", { fg = colors.nerv_orange, bold = true })
  hi("CmpItemKind", { fg = colors.nerv_yellow })
  hi("CmpItemMenu", { fg = colors.light_gray })
  
  -- Terminal colors
  vim.g.terminal_color_0 = colors.black
  vim.g.terminal_color_1 = colors.nerv_red
  vim.g.terminal_color_2 = colors.nerv_green
  vim.g.terminal_color_3 = colors.nerv_yellow
  vim.g.terminal_color_4 = colors.nerv_blue
  vim.g.terminal_color_5 = colors.purple
  vim.g.terminal_color_6 = colors.info
  vim.g.terminal_color_7 = colors.fg
  vim.g.terminal_color_8 = colors.gray
  vim.g.terminal_color_9 = colors.nerv_red
  vim.g.terminal_color_10 = colors.nerv_green
  vim.g.terminal_color_11 = colors.nerv_yellow
  vim.g.terminal_color_12 = colors.nerv_blue
  vim.g.terminal_color_13 = colors.purple
  vim.g.terminal_color_14 = colors.info
  vim.g.terminal_color_15 = colors.fg
end

return M