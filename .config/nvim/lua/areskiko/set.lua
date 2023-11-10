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
vim.g.netrw_keepdir = 0

-- Responsive
vim.opt.updatetime = 50
