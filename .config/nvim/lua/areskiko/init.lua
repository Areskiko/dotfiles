require("areskiko.set")
require("areskiko.remap")
require("areskiko.statusline")
require("areskiko.packer") -- Plugins

local augroup = vim.api.nvim_create_augroup
local AreskikoGroup = augroup("Areskiko", {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup("HighlightYank", {})

function R(name)
	require("plenary.reload").reload_module(name)
end

-- Highlight yanked text
autocmd("TextYankPost", {
	group = yank_group,
	pattern = '*',
	callback = function ()
		vim.highlight.on_yank({
			higroup = 'IncSearch',
			timeout = 100,
		})
	end,
})

-- Remove trailing whitespace
autocmd({"BufWritePre"}, {
    group = AreskikoGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
