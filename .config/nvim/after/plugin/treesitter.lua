require 'nvim-treesitter.configs'.setup {
	-- A list of parser names, or "all"
	ensure_installed = {
		"c",
		"cmake",
		"lua",
		"rust",
		"javascript",
		"typescript",
		"tsx",
		"svelte",
		"python",
		"go",
		"ocaml",
		"latex",
		"markdown",
		"css",
		"haskell"
	},

	-- Install parsers synchronously (only applied to `ensure_installed`)
	sync_install = false,


	highlight = {
		-- `false` will disable the whole extension
		enable = true,

		-- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
		disable = function(lang, buf)
			local max_filesize = 100 * 1024 -- 100 KB
			local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
			if ok and stats and stats.size > max_filesize then
				return true
			end
		end,
	},

	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = '<CR>',
			scope_incremental = '<CR>',
			node_incremental = '<TAB>',
			node_decremental = '<S-TAB>',
		},
	},

	indent = {
		enable = true
	}
}
