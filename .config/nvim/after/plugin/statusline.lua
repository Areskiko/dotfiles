require('lualine').setup {
	options = {
		theme = 'gruvbox',
	},
	sections = {
		lualine_c = { 'filename', 'nvim_treesitter#statusline', 'gutentags#statusline' },
		lualine_x = {
			{
				require("noice").api.statusline.mode.get,
				cond = require("noice").api.statusline.mode.has,
				color = { fg = "#ff9e64" },
			},
			'fileformat'
		},
		lualine_y = {'filetype' },
	}
}
