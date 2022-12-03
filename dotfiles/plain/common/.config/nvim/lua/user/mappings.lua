-- keys som kan bindas
--  s
--
--
-- Which-key
local wk = require("which-key")
-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }
--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

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

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Plugins --

-- NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
-- keymap("n", "<leader>e", "<cmd>Telescope file_browser<cr>", opts)

-- Telescope
keymap("n", "<leader>tt", ":Telescope find_files hidden=true<CR>", opts)
keymap("n", "<leader>ts", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>tp", ":Telescope projects<CR>", opts)
keymap("n", "<leader>tb", ":Telescope buffers<CR>", opts)

-- Git
keymap("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", opts)

-- Comment
keymap("n", "<leader>/", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", opts)
keymap("x", "<leader>/", '<ESC><CMD>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>')

-- DAP
keymap("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts)
keymap("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", opts)
keymap("n", "<leader>di", "<cmd>lua require'dap'.step_into()<cr>", opts)
keymap("n", "<leader>do", "<cmd>lua require'dap'.step_over()<cr>", opts)
keymap("n", "<leader>dO", "<cmd>lua require'dap'.step_out()<cr>", opts)
keymap("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", opts)
keymap("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", opts)
keymap("n", "<leader>du", "<cmd>lua require'dapui'.toggle()<cr>", opts)
keymap("n", "<leader>dt", "<cmd>lua require'dap'.terminate()<cr>", opts)

-- Telekasten
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
keymap("n", "<leader>,", "<cmd>cd ~/dot/dotfiles/plain/common/<cr><cmd>e ~/dot/dotfiles/plain/common/.config/nvim/init.lua<cr><cmd>Telescope find_files hidden=true<cr>")
keymap("n", ",", "<cmd>Telescope find_files hidden=true<cr>")
keymap("n", ";", ":")
keymap("n", "todo", "<cmd>TW<cr>")
keymap("n", "-", "<cmd>HopWordMW<cr>")
keymap("n", "f", "<cmd>HopChar1CurrentLine<cr>")
keymap("n", "sh", "<cmd>lua vim.lsp.buf.hover()<cr>")
keymap("n", "<leader>zen", "<cmd>ZenMode<cr>")

keymap("n", "<leader>w", "<cmd>lua require'telekasten'.panel()<cr>", opts)
wk.register({
	-- ["t"] = { name = "Telescope" },
	["w"] = {
		"<cmd>lua require'telekasten'.panel()<cr>",
		"Wiki",
		["c"] = { "<cmd>CalendarT<cr>", "Calendar" },
		["s"] = { "<cmd>lua require'telekasten'.find_notes()<cr>", "Find notes" },
		["/"] = { "<cmd>lua require'telekasten'.search_notes()<cr>", "Search notes" },
		["n"] = { "<cmd>lua require'telekasten'.new_note()<cr>", "New note" },
		["t"] = { "<cmd>lua require'telekasten'.show_tags()<cr>", "Show tags" },
		["i"] = { "<cmd>lua require'telekasten'.insert_link()<cr>", "Insert link" },
		["r"] = { "<cmd>lua require'telekasten'.rename_note()<cr>", "Rename note" },
		["w"] = { "<cmd>lua require'telekasten'.goto_today()<cr>", "Todays diary" },
		["<C-leader>"] = { ":lua require'telekasten'.toggle_todo({v=true})<cr>", "Toggle todo" },
	},
	["u"] = { "<cmd>UndotreeToggle<cr><cmd>UndotreeFocus<cr>", "Undotree" },
	[";"] = { "<cmd>Alpha<cr>", "Alpha menu" },
	["p"] = { "<cmd>Telescope projects<cr>", "Undotree" },
	["t"] = {
		name = "+Trouble",
		r = { "<cmd>Trouble lsp_references<cr>", "References" },
		f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
		d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
		q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
		l = { "<cmd>Trouble loclist<cr>", "LocationList" },
		w = { "<cmd>Trouble workspace_diagnostics<cr>", "Wordspace Diagnostics" },
	},
}, { prefix = "<leader>" })




-- vim.keymap.set("n", "<leader>caL", "<Nop>", opts)
