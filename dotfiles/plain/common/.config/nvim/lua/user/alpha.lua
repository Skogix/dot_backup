local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
  return
end

local dashboard = require "alpha.themes.dashboard"
dashboard.section.header.val = {
  [[ _____ _               _      ]],
  [[/  ___| |             (_)     ]],
  [[\ `--.| | _____   __ _ ___  __]],
  [[ `--. \ |/ / _ \ / _` | \ \/ /]],
  [[/\__/ /   < (_) | (_| | |>  < ]],
  [[\____/|_|\_\___/ \__, |_/_/\_\]],
  [[                  __/ |       ]],
  [[                 |___/        ]],
}
dashboard.section.buttons.val = {
  dashboard.button("f", " " .. " Find file", ":Telescope find_files <CR>"),
  dashboard.button("e", " " .. " New file", ":ene <BAR> startinsert <CR>"),
  dashboard.button("p", " " .. " Find project", ":lua require('telescope').extensions.projects.projects()<CR>"),
  dashboard.button("r", " " .. " Recent files", ":Telescope oldfiles <CR>"),
  dashboard.button("t", " " .. " Find text", ":Telescope live_grep <CR>"),
  dashboard.button("c", " " .. " Config", ":cd ~/dot/dotfiles/plain/common/<CR><cmd>e ~/dot/dotfiles/plain/common/.config/nvim/init.lua<cr>"),
  dashboard.button("q", " " .. " Quit", ":qa<CR>"),
}
local function footer()
  return "skogix"
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)
