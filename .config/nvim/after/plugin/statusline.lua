require('lualine').setup {
	options = {
		theme = 'gruvbox',
	},
	sections = {
		lualine_c = { 'filename', 'nvim_treesitter#statusline', 'gutentags#statusline' },
		lualine_x = {},
		lualine_y = { 'encoding', 'fileformat', 'filetype' },
	}
}
