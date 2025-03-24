local M = {}

function M.setup()
  local notify_ok, notify = pcall(require, "notify")
  if not notify_ok then
    return
  end

  -- NERV風のnotifyスタイル
  notify.setup({
    -- アニメーションスタイル
    -- "fade", "slide", "fade_in_slide_out", "static"
    stages = "static",
    
    -- 通知の表示時間（ミリ秒）
    timeout = 3000,
    
    -- 最大通知数
    max_width = 80,
    max_height = 20,
    
    -- 通知の背景色
    background_colour = "#000000",
    
    -- 通知のアイコン
    icons = {
      ERROR = "▲",
      WARN = "▲",
      INFO = "■",
      DEBUG = "●",
      TRACE = "◆",
    },
    
    -- 通知のレンダリングスタイル
    render = function(bufnr, notif, highlights, config)
      local namespace = vim.api.nvim_create_namespace("nerv_notify")
      local icon = config.icons[notif.level] or "■"
      local prefix = string.format("NERV-%05d: ", math.random(1, 99999))
      
      -- タイトル行
      local title_line = string.format("%s %s %s", icon, prefix, notif.title)
      vim.api.nvim_buf_set_lines(bufnr, 0, 1, false, { title_line })
      
      -- ハイライトの適用
      local title_hl = highlights.title[notif.level]
      vim.api.nvim_buf_add_highlight(bufnr, namespace, title_hl, 0, 0, -1)
      
      -- 区切り線
      local separator = string.rep("═", config.max_width - 2)
      vim.api.nvim_buf_set_lines(bufnr, 1, 2, false, { separator })
      vim.api.nvim_buf_add_highlight(bufnr, namespace, title_hl, 1, 0, -1)
      
      -- メッセージ本文
      local body_start_line = 2
      if notif.message then
        local message_lines = {}
        for i, line in ipairs(notif.message) do
          table.insert(message_lines, line)
        end
        vim.api.nvim_buf_set_lines(bufnr, body_start_line, body_start_line + #message_lines, false, message_lines)
        
        -- 本文のハイライト
        local body_hl = highlights.body[notif.level]
        for i = 0, #message_lines - 1 do
          vim.api.nvim_buf_add_highlight(bufnr, namespace, body_hl, body_start_line + i, 0, -1)
        end
      end
      
      -- 下部区切り線
      local bottom_line = body_start_line + #notif.message
      vim.api.nvim_buf_set_lines(bufnr, bottom_line, bottom_line + 1, false, { separator })
      vim.api.nvim_buf_add_highlight(bufnr, namespace, title_hl, bottom_line, 0, -1)
      
      -- タイムスタンプ
      local timestamp = os.date("%H:%M:%S")
      local status_line = string.format("STATUS: ACTIVE | TIME: %s", timestamp)
      vim.api.nvim_buf_set_lines(bufnr, bottom_line + 1, bottom_line + 2, false, { status_line })
      vim.api.nvim_buf_add_highlight(bufnr, namespace, title_hl, bottom_line + 1, 0, -1)
    end,
  })
end

return M