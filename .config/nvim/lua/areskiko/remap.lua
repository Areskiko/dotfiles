-- Diagnostics
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
vim.keymap.set('n', 'Ø', vim.diagnostic.goto_prev)
vim.keymap.set('n', 'ø', vim.diagnostic.goto_next)
-- Save diagnostics to quickfix list
vim.keymap.set('n', '<leader>q', vim.diagnostic.setqflist)


-- Navigate quickfix- and locationlists
--vim.keymap.set("n", "<leader>l", "<cmd>cnext<CR>zz")
--vim.keymap.set("n", "<leader>k", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "Æ", "<cmd>lprev<CR>zz")
vim.keymap.set("n", "æ", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>la", [["lyiw:lvim /<C-R>l/gj %<CR>]])
vim.keymap.set("n", "<leader>lc", "<cmd>lexpr []<CR>")
vim.keymap.set("n", "<leader>lr", [[:lexpr []<CR>"lyiw:lvim /<C-R>l/gj %<CR>]])


-- Move selected text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")


-- Replace all in file
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Pasting
-- In normal mode <leader>[pP] pastes from the clipboard
-- In visual mode <leader>P pastes from the default register without overwriting
-- while <leader>p pastes from the clipboard

-- Paste withouth losing content
vim.keymap.set("v", "<leader>P", [["_dP]])
-- Delete withouth losing content
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- Clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>p", [["+p]])
vim.keymap.set("n", "<leader>P", [["+P]])

-- Buffers
vim.keymap.set("n", "<leader>tn", "<cmd>tabnext<CR>")
