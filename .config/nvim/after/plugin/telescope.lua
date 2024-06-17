require('telescope').setup({
	extensions = {
		["ui-select"] = {
			require("telescope.themes").get_dropdown {
				-- even more opts
			}
		}
	}
})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fj', builtin.live_grep, {})
vim.keymap.set('n', '<leader>jj', function () builtin.tags({only_sort_tags = true}) end, {})
vim.keymap.set('n', '<leader>fk', builtin.commands, {})
vim.keymap.set('n', '<leader>fs', builtin.lsp_workspace_symbols, {})
vim.keymap.set('n', '<leader>gr', builtin.lsp_references, {})
vim.keymap.set('n', '<leader>ls', builtin.loclist, {})
vim.keymap.set('n', '<leader>ld', builtin.diagnostics, {})

require("telescope").load_extension("ui-select")
