-- Plugins
require('packer').startup(function(use)
	-- Package manager
	use 'wbthomason/packer.nvim'


	-- File picker
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}
end)
