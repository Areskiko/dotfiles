local servers = {
	"rust_analyzer",
	"gopls",
	"tsserver",
	"ocamllsp",
}


local lsp = require("lsp-zero")

lsp.preset({
	float_border = "single",
	manage_nvim_cmp = {
		set_sources = 'recommended',
		set_basic_mappings = true,
		set_extra_mappings = false,
		use_luasnip = true,
		set_format = true,
		documentation_window = true,
	},
})

-- Disabled - Want to manage servers with pacman
-- lsp.ensure_installed(default_language_servers)

-- Fix Undefined global 'vim'
lsp.nvim_workspace()

-- Autocomplete
local cmp = require("cmp")
local cmp_select = {behaviour = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
	['<C-b>'] = cmp.mapping.scroll_docs(-4),
	['<C-f>'] = cmp.mapping.scroll_docs(4),
	['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
	['<C-e>'] = cmp.mapping.abort(),
	['<Tab>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
})

lsp.setup_nvim_cmp({
	mapping = cmp_mappings

})

lsp.set_preferences({
	suggest_lsp_servers = false,
})

lsp.on_attach(function(client, bufnr)
	local bufopts = {buffer = bufnr, remap = false}

	vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
	vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
	vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
	vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
	vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
	vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, bufopts)
	vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
	vim.keymap.set('n', '<leader>wl', function()
		print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
	end, bufopts)
	vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, bufopts)
	vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
	vim.keymap.set('n', 'å', vim.lsp.buf.code_action, bufopts)
	vim.keymap.set('n', '<leader>fd', function() vim.lsp.buf.format { async = true } end, bufopts)
end)

vim.diagnostic.config({
	virtual_text = true
})

for _, server in pairs(servers) do
	require('lspconfig')[server].setup({})
end

lsp.setup()
