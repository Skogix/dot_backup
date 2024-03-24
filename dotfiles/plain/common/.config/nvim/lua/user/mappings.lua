-- keys som kan bindas
--  s
--
--
-- Which-key
-- local wk = require("which-key")
-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }
--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- xnoremap <C-S-P> <Cmd>call VSCodeNotifyVisual('workbench.action.showCommands', 1)<CR>
-- keymap("n", "<leader>e", "<cmd>call VSCodeNotifyVisual('workbench.action.showCommands', 1)<cr>")
-- keymap("n", "<leader>c", "<cmd>call VSCodeNotify('workbench.action.closeActiveEditor')<cr>")
-- keymap("n", ",", "<cmd>call VSCodeNotifyVisual('workbench.action.quickOpen', 1)<cr>")
-- keymap("n", "<leader>rn", "<cmd>call VSCodeNotifyVisual('editor.action.rename', 1)<cr>")
-- nnoremap <C-w><C-c> <Cmd>call VSCodeNotify('workbench.action.closeActiveEditor')<CR>
-- nnoremap z= <Cmd>call VSCodeNotify('editor.action.quickFix')<CR>
-- xnoremap <C-P> <Cmd>call VSCodeNotifyVisual('workbench.action.quickOpen', 1)<CR>
-- xnoremap <C-S-P> <Cmd>call VSCodeNotifyVisual('workbench.action.showCommands', 1)<CR>
-- xnoremap <C-S-F> <Cmd>call VSCodeNotifyVisual('workbench.action.findInFiles', 0)<CR>

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",
-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Clear highlights
keymap("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)

-- Close buffers
keymap("n", "<leader>c", "<cmd>w<CR><cmd>Bdelete!<CR>", opts)
keymap("n", "<C-c>", "<cmd>w<CR><cmd>Bdelete!<CR>", opts)
-- keymap("n", "<C-w>", "<cmd>w<CR><cmd>Bdelete!<CR>", opts)

-- Better paste
keymap("v", "p", '"_dP', opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Plugins --

-- NvimTree
-- keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
-- keymap("n", "<leader>e", "<cmd>Telescope file_browser<cr>", opts)

-- Telescope
-- keymap("n", "<leader>tt", ":Telescope find_files hidden=true<CR>", opts)
-- keymap("n", "<leader>ts", ":Telescope live_grep<CR>", opts)
-- keymap("n", "<leader>tp", ":Telescope projects<CR>", opts)
-- keymap("n", "<leader>tb", ":Telescope buffers<CR>", opts)

-- Git
-- keymap("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", opts)

-- Comment
keymap("n", "<leader>/", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", opts)
keymap("x", "<leader>/", '<ESC><CMD>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>')

-- DAP
-- keymap("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts)
-- keymap("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", opts)
-- keymap("n", "<leader>di", "<cmd>lua require'dap'.step_into()<cr>", opts)
-- keymap("n", "<leader>do", "<cmd>lua require'dap'.step_over()<cr>", opts)
-- keymap("n", "<leader>dO", "<cmd>lua require'dap'.step_out()<cr>", opts)
-- keymap("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", opts)
-- keymap("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", opts)
-- keymap("n", "<leader>du", "<cmd>lua require'dapui'.toggle()<cr>", opts)
-- keymap("n", "<leader>dt", "<cmd>lua require'dap'.terminate()<cr>", opts)

keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>", opts)
keymap("n", "gd", "<cmd>lua vim.lsp.buf.def>inition()<cr>", opts)
keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>", opts)
keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>", opts)
keymap("n", "sh", "<cmd>lua vim.lsp.buf.signature_help()<cr>", opts)
keymap("n", "<leader>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>", opts)
keymap("n", "<leader>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>", opts)
keymap("n", "<leader>D", "<cmd>lua vim.lsp.buf.type_definition()<cr>", opts)
keymap("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<cr>", opts)
keymap("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)
keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>", opts)
keymap("n", "<leader>e", "<cmd>lua vim.diagnostic.open_float()<cr>", opts)
keymap("n", "<leader>nd", "<cmd>lua vim.diagnostic.goto_prev()<cr>", opts)
keymap("n", "<leader>pd", "<cmd>lua vim.diagnostic.goto_next()<cr>", opts)
keymap("n", "<leader>q", "<cmd>lua vim.diagnostic.setloclist()<cr>", opts)
-- Telekasten
<<<<<<< HEAD
-- keymap("n", "<leader>wc", "<cmd>CalendarT<cr>", opts)
-- keymap("n", "<leader>ws", "<cmd>lua require'telekasten'.find_notes()<cr>", opts)
-- keymap("n", "<leader>w/", "<cmd>lua require'telekasten'.search_notes()<cr>", opts)
-- keymap("n", "<leader>wn", "<cmd>lua require'telekasten'.new_note()<cr>", opts)
-- keymap("n", "<leader>wt", "<cmd>lua require'telekasten'.show_tags()<cr>", opts)
-- keymap("n", "<leader>wi", "<cmd>lua require'telekasten'.insert_link()<cr>", opts)
-- keymap("n", "<leader>wr", "<cmd>lua require'telekasten'.rename_note()<cr>", opts)
-- keymap("n", "<leader>w<leader>", "<cmd>lua require'telekasten'.goto_today()<cr>", opts)
-- keymap("n", "<leader>w<leader>w", "<cmd>lua require'telekasten'.goto_thisweek()<cr>", opts)
-- keymap("n", "<leader><cr>", "<cmd>lua require'telekasten'.follow_link()<cr>", opts)
<<<<<<< HEAD
-- keymap("n", "<leader>,", "<cmd>cd ~/dot/dotfiles/plain/common/<cr><cmd>e ~/dot/dotfiles/plain/common/.config/nvim/init.lua<cr><cmd>Telescope find_files hidden=true<cr>")
-- keymap("n", ",", "<cmd>Telescope find_files hidden=true<cr>")
=======
keymap("n", "<leader>wc", "<cmd>CalendarT<cr>", opts)
keymap("n", "<leader>ws", "<cmd>lua require'telekasten'.find_notes()<cr>", opts)
keymap("n", "<leader>w/", "<cmd>lua require'telekasten'.search_notes()<cr>", opts)
keymap("n", "<leader>wn", "<cmd>lua require'telekasten'.new_note()<cr>", opts)
keymap("n", "<leader>wt", "<cmd>lua require'telekasten'.show_tags()<cr>", opts)
keymap("n", "<leader>wi", "<cmd>lua require'telekasten'.insert_link()<cr>", opts)
keymap("n", "<leader>wr", "<cmd>lua require'telekasten'.rename_note()<cr>", opts)
keymap("n", "<leader>w<leader>", "<cmd>lua require'telekasten'.goto_today()<cr>", opts)
keymap("n", "<leader>w<leader>w", "<cmd>lua require'telekasten'.goto_thisweek()<cr>", opts)
keymap("n", "<leader><cr>", "<cmd>lua require'telekasten'.follow_link()<cr>", opts)
keymap("n", "<leader>,", "<cmd>cd ~/dot/dotfiles/plain/common/<cr><cmd>e ~/dot/dotfiles/plain/common/.config/nvim/init.lua<cr><cmd>Telescope find_files hidden=true<cr>")
keymap("n", ",", "<cmd>Telescope find_files hidden=true<cr>")
>>>>>>> 5388ff2 (.)
keymap("n", ";", ":")
-- keymap("n", "todo", "<cmd>TW<cr>")
=======
keymap("n", "<leader>,",
"<cmd>cd ~/dot/dotfiles/plain/common/<cr><cmd>e ~/dot/dotfiles/plain/common/.config/nvim/init.lua<cr><cmd>Telescope find_files hidden=true<cr>")
keymap("n", ",", "<cmd>Telescope find_files hidden=true<cr>")
keymap("n", ";", ":")
keymap("n", "todo", "<cmd>TW<cr>")
keymap("n", "dump", "<cmd>e /mnt/c/Documents and Settings/skogsemi/Documents/Virtual Machines/Shared/dump.md<cr>")
>>>>>>> 855ed6b (.)
keymap("n", "-", "<cmd>HopWordMW<cr>")
keymap("n", "f", "<cmd>HopChar1CurrentLine<cr>")
keymap("n", "sh", "<cmd>lua vim.lsp.buf.hover()<cr>")
-- keymap("n", "<leader>zen", "<cmd>ZenMode<cr>")
--
-- keymap("n", "<leader>w", "<cmd>lua require'telekasten'.panel()<cr>", opts)
-- wk.register({
-- 	-- ["t"] = { name = "Telescope" },
-- 	["w"] = {
-- 		"<cmd>lua require'telekasten'.panel()<cr>",
-- 		"Wiki",
-- 		["c"] = { "<cmd>CalendarT<cr>", "Calendar" },
-- 		["s"] = { "<cmd>lua require'telekasten'.find_notes()<cr>", "Find notes" },
-- 		["/"] = { "<cmd>lua require'telekasten'.search_notes()<cr>", "Search notes" },
-- 		["n"] = { "<cmd>lua require'telekasten'.new_note()<cr>", "New note" },
-- 		["t"] = { "<cmd>lua require'telekasten'.show_tags()<cr>", "Show tags" },
-- 		["i"] = { "<cmd>lua require'telekasten'.insert_link()<cr>", "Insert link" },
-- 		["r"] = { "<cmd>lua require'telekasten'.rename_note()<cr>", "Rename note" },
-- 		["w"] = { "<cmd>lua require'telekasten'.goto_today()<cr>", "Todays diary" },
-- 		["<C-leader>"] = { ":lua require'telekasten'.toggle_todo({v=true})<cr>", "Toggle todo" },
-- 	},
-- 	["u"] = { "<cmd>UndotreeToggle<cr><cmd>UndotreeFocus<cr>", "Undotree" },
-- 	[";"] = { "<cmd>Alpha<cr>", "Alpha menu" },
-- 	["p"] = { "<cmd>Telescope projects<cr>", "Undotree" },
-- 	["t"] = {
-- 		name = "+Trouble",
-- 		r = { "<cmd>Trouble lsp_references<cr>", "References" },
-- 		f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
-- 		d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
-- 		q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
-- 		l = { "<cmd>Trouble loclist<cr>", "LocationList" },
-- 		w = { "<cmd>Trouble workspace_diagnostics<cr>", "Wordspace Diagnostics" },
-- 	},
-- }, { prefix = "<leader>" })



