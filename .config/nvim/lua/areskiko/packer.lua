-- Only required if you have packer configured as `opt`
vim.cmd.packadd("packer.nvim")

return require("packer").startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Theme
	use 'ellisonleao/gruvbox.nvim'

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}

	-- Syntax highlighting
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}

	-- File picker
	use {
		'nvim-telescope/telescope.nvim',
		requires = { { 'nvim-lua/plenary.nvim' },
		}
	}

	-- Universal CTags
	use 'ludovicchabant/vim-gutentags'

	-- Prettier quickfix list
	use {
		'folke/trouble.nvim',
		requires = { { 'nvim-tree/nvim-web-devicons' } }
	}

	-- Visualization of the undo tree
	use 'mbbill/undotree'

	-- Lsp
	use {
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			-- LSP Support
			{ 'neovim/nvim-lspconfig' },

			-- Autocompletion
			{ 'hrsh7th/nvim-cmp' },
			{ 'hrsh7th/cmp-buffer' },
			{ 'hrsh7th/cmp-path' },
			{ 'saadparwaiz1/cmp_luasnip' },
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'hrsh7th/cmp-nvim-lua' },

			-- Snippets
			{ 'L3MON4D3/LuaSnip' },
			{ 'rafamadriz/friendly-snippets' },
		}
	}

	-- Zk
	use {
		'zk-org/zk-nvim'
	}

	-- Copilot ew
	--[[
	disabled use {
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter",
		config = function()
			require("copilot").setup({
				suggestion = {
					auto_trigger = true,
				},
			})
		end,
	}
	]]

	use { 'folke/noice.nvim',
		requires = {
			{ "MunifTanjim/nui.nvim" },
			{ 'rcarriga/nvim-notify' }
		}
	}

	use { 'nvim-telescope/telescope-ui-select.nvim' }

	use { 'stevearc/oil.nvim' }
end)
