local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  })
  print("Installing packer close and reopen Neovim...")
  vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
  autocmd!
  autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init({
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "rounded" })
    end,
  },
  git = {
    clone_timeout = 300, -- Timeout, in seconds, for git clones
  },
})

-- Install your plugins here
return packer.startup(function(use)
<<<<<<< HEAD
<<<<<<< HEAD
    use({ "wbthomason/packer.nvim", commit = "6afb67460283f0e990d35d229fd38fdc04063e0a" }) -- Have packer manage itself
    use({ "nvim-lua/plenary.nvim", commit = "4b7e52044bbb84242158d977a50c4cbcd85070c7" }) -- Useful lua functions used by lots of plugins
    use({ "windwp/nvim-autopairs", commit = "4fc96c8f3df89b6d23e5092d31c866c53a346347" }) -- Autopairs, integrates with both cmp and treesitter
    use({ "numToStr/Comment.nvim", commit = "97a188a98b5a3a6f9b1b850799ac078faa17ab67" })
=======
    use({ "wbthomason/packer.nvim" }) -- Have packer manage itself
    use({ "nvim-lua/plenary.nvim" }) -- Useful lua functions used by lots of plugins
    use({ "windwp/nvim-autopairs" }) -- Autopairs, integrates with both cmp and treesitter
    use({ "numToStr/Comment.nvim" })
>>>>>>> 5388ff2 (.)
  if vim.g.vscode then
    -- VSCode extension
  else
    -- ordinary Neovim
    use({ "JoosepAlviste/nvim-ts-context-commentstring" })
    use({ "kyazdani42/nvim-web-devicons" })
    use({ "kyazdani42/nvim-tree.lua" })
    use({ "akinsho/bufferline.nvim" })
    use({ "moll/vim-bbye" })
    use({ "nvim-lualine/lualine.nvim" })
    use({ "akinsho/toggleterm.nvim" })
    use({ "ahmedkhalf/project.nvim" })
    use({ "lewis6991/impatient.nvim" })
    use({ "lukas-reineke/indent-blankline.nvim" })
    use({ "goolord/alpha-nvim" })

    -- Colorschemes
    use({ "folke/tokyonight.nvim" })
    use({ "lunarvim/darkplus.nvim" })
    use({ "ellisonleao/gruvbox.nvim" })

    -- cmp plugins
    use({ "hrsh7th/nvim-cmp" }) -- The completion plugin
    use({ "hrsh7th/cmp-buffer" }) -- buffer completions
    use({ "hrsh7th/cmp-path" }) -- path completions
    use({ "saadparwaiz1/cmp_luasnip" }) -- snippet completions
    use({ "hrsh7th/cmp-nvim-lsp" })
    use({ "hrsh7th/cmp-nvim-lua" })

    -- snippets
    use({ "L3MON4D3/LuaSnip" }) --snippet engine
    use({ "rafamadriz/friendly-snippets" }) -- a bunch of snippets to use

    -- LSP
    -- use { "williamboman/nvim-lsp-installer" } -- simple to use language server installer
    use({ "neovim/nvim-lspconfig" }) -- enable LSP
    use({ "williamboman/mason.nvim" })
    use({ "williamboman/mason-lspconfig.nvim" })
    use({ "jose-elias-alvarez/null-ls.nvim" }) -- for formatters and linters
    use({ "RRethy/vim-illuminate" })

    -- Telescope
    use({ "nvim-telescope/telescope.nvim" })
    use({ "nvim-telescope/telescope-symbols.nvim" })
    use({ "nvim-telescope/telescope-file-browser.nvim" })
    use({ "nvim-telescope/telescope-ui-select.nvim" })
    use({ "nvim-telescope/telescope-snippets.nvim" })
    use({ "nvim-telescope/telescope-packer.nvim" })
    use({ "nvim-telescope/telescope-cheat.nvim" })
    use({ "nvim-telescope/telescope-dap.nvim" })
    use({ "nvim-telescope/telescope-github.nvim" })
    use({ "nvim-telescope/telescope-media-files.nvim" })
    use({ "nvim-telescope/telescope-hop.nvim" })

    -- Treesitter
    use({
      "nvim-treesitter/nvim-treesitter",
      commit = "8e763332b7bf7b3a426fd8707b7f5aa85823a5ac",
    })
    use({ "folke/which-key.nvim" })

    -- Git
    use({ "lewis6991/gitsigns.nvim" })

    -- DAP
<<<<<<< HEAD
    use({ "mfussenegger/nvim-dap", commit = "6b12294a57001d994022df8acbe2ef7327d30587" })
    use({ "rcarriga/nvim-dap-ui", commit = "1cd4764221c91686dcf4d6b62d7a7b2d112e0b13" })
    use({ "ravenxrz/DAPInstall.nvim", commit = "8798b4c36d33723e7bba6ed6e2c202f84bb300de" })
=======
	-- My plugins here
	use({ "wbthomason/packer.nvim" }) -- Have packer manage itself
	use({ "nvim-lua/plenary.nvim" }) -- Useful lua functions used by lots of plugins
	use({ "windwp/nvim-autopairs" }) -- Autopairs, integrates with both cmp and treesitter
	use({ "numToStr/Comment.nvim" })
	use({ "JoosepAlviste/nvim-ts-context-commentstring" })
	use({ "kyazdani42/nvim-web-devicons" })
	use({ "kyazdani42/nvim-tree.lua" })
	use({ "akinsho/bufferline.nvim" })
	use({ "moll/vim-bbye" })
	use({ "nvim-lualine/lualine.nvim" })
	use({ "akinsho/toggleterm.nvim" })
	use({ "ahmedkhalf/project.nvim" })
	use({ "lewis6991/impatient.nvim" })
	use({ "lukas-reineke/indent-blankline.nvim" })
	use({ "goolord/alpha-nvim" })

	-- Colorschemes
	use({ "folke/tokyonight.nvim" })
	use({ "lunarvim/darkplus.nvim" })
	use({ "ellisonleao/gruvbox.nvim" })

	-- cmp plugins
	use({ "hrsh7th/nvim-cmp" })        -- The completion plugin
	use({ "hrsh7th/cmp-buffer" })      -- buffer completions
	use({ "hrsh7th/cmp-path" })        -- path completions
	use({ "saadparwaiz1/cmp_luasnip" }) -- snippet completions
	use({ "hrsh7th/cmp-nvim-lsp" })
	use({ "hrsh7th/cmp-nvim-lua" })

	-- snippets
	use({ "L3MON4D3/LuaSnip" })            --snippet engine
	use({ "rafamadriz/friendly-snippets" }) -- a bunch of snippets to use

	-- LSP
	-- use { "williamboman/nvim-lsp-installer" } -- simple to use language server installer
	use({ "neovim/nvim-lspconfig" }) -- enable LSP
	use({ "williamboman/mason.nvim" })
	use({ "williamboman/mason-lspconfig.nvim" })
	use({ "jose-elias-alvarez/null-ls.nvim" }) -- for formatters and linters
	use({ "RRethy/vim-illuminate" })

	-- Telescope
	use({ "nvim-telescope/telescope.nvim" })
	use({ "nvim-telescope/telescope-symbols.nvim" })
	use({ "nvim-telescope/telescope-file-browser.nvim" })
	use({ "nvim-telescope/telescope-ui-select.nvim" })
	use({ "nvim-telescope/telescope-snippets.nvim" })
	use({ "nvim-telescope/telescope-packer.nvim" })
	use({ "nvim-telescope/telescope-cheat.nvim" })
	use({ "nvim-telescope/telescope-dap.nvim" })
	use({ "nvim-telescope/telescope-github.nvim" })
	use({ "nvim-telescope/telescope-media-files.nvim" })
	use({ "nvim-telescope/telescope-hop.nvim" })

	-- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter"
	})
	use({ "folke/which-key.nvim" })

	-- Git
	use({ "lewis6991/gitsigns.nvim" })

	-- DAP
	use({ "mfussenegger/nvim-dap" })
	use({ "rcarriga/nvim-dap-ui" })
	use({ "ravenxrz/DAPInstall.nvim" })
>>>>>>> 855ed6b (.)
=======
    use({ "mfussenegger/nvim-dap" })
    use({ "rcarriga/nvim-dap-ui" })
    use({ "ravenxrz/DAPInstall.nvim" })
>>>>>>> 5388ff2 (.)

    -- Wiki
    use({ "renerocksai/calendar-vim" })
    use({ "renerocksai/telekasten.nvim" })
    use({ "mzlogin/vim-markdown-toc" })
    use({
      "vimwiki/vimwiki",
      config = function()
        vim.g.vimwiki_list = {
          {
            path = "~/zettelkasten/",
            syntax = "markdown",
            ext = ".md",
          },
        }
      end,
    })
    -- Skogix
    use({ "https://github.com/mbbill/undotree" })
    use({ "blindFS/vim-taskwarrior" })
    use({ "soywod/kronos.vim" })
    use({ "phaazon/hop.nvim" })
    use({ "francoiscabrol/ranger.vim" })

    use({ "folke/zen-mode.nvim" })
    use({ "folke/trouble.nvim" })

<<<<<<< HEAD
    use({ "ionide/Ionide-vim" })
    use({ "kosayoda/nvim-lightbulb" })
    -- Tpope
    use({"tpope/vim-speeddating"}) -- CTRL-A for things like dates and time
    use({"tpope/vim-surround"}) -- 
    use({"tpope/vim-repeat"}) -- . repeats with plugins
    use({"tpope/vim-fugitive"}) -- . repeats with plugins
    -- TrePrimagen
    use({"ThePrimeagen/vim-be-good"})
    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
  end
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
=======
	use({ "ionide/Ionide-vim" })
	use({ "kosayoda/nvim-lightbulb" })
	-- Tpope
	use({ "tpope/vim-speeddating" }) -- CTRL-A for things like dates and time
	use({ "tpope/vim-surround" })  --
	use({ "tpope/vim-repeat" })    -- . repeats with plugins
	use({ "tpope/vim-fugitive" })  -- . repeats with plugins
	-- TrePrimagen
	use({ "ThePrimeagen/vim-be-good" })
	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
>>>>>>> 855ed6b (.)
end)
