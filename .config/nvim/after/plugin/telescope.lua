local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fj', builtin.live_grep, {})
vim.keymap.set('n', '<leader>jj', builtin.tags, {})
vim.keymap.set('n', '<leader>fk', builtin.commands, {})
vim.keymap.set('n', '<leader>fs', builtin.lsp_workspace_symbols, {})