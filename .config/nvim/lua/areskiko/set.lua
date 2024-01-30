vim.g.mapleader = " "

-- Lines
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.linebreak = true
-- vim.opt.colorcolumn = "80"

-- Indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 0
vim.opt.shiftwidth = 0
vim.opt.expandtab = false
vim.opt.smartindent = true

-- Searching
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Swap and Undo
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Navigation
--vim.g.netrw_keepdir = 0

-- Responsive
vim.opt.updatetime = 50

-- Insert message
vim.opt.showmode = false

-- Spell
vim.opt.spell = true

-- Text Width
local formattingGroup = vim.api.nvim_create_augroup('formatting', { clear = true })
vim.api.nvim_create_autocmd("FileType", {
	group=formattingGroup,
	pattern="*",
	callback = function()
        if vim.bo.filetype ~= "markdown" then
			vim.opt.textwidth = 0
		else
			vim.opt.textwidth = 80
		end
    end,
})

