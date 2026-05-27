-- KEYBINDS
local map = vim.keymap.set

-- global leader 
vim.g.mapleader = " "
vim.g.maplocalleader = ' '

-- simple save op
map("n", "<leader>w", "<cmd>w<CR>")
-- make file executable
map("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- reload without exiting vim
map("n", "<leader>rl", "<cmd>source $MYVIMRC<CR>")

-- run make in current working directory
map("n", "<leader>mm", "<cmd>make<CR>")

-- Copy to clipboard shortcuts
map('n', '<leader>cp', function()
	local path = vim.fn.expand('%:p')
	vim.fn.setreg('+', path)
	vim.notify('Copied: ' .. path)
end, { desc = 'Copy absolute path' })

map('n', '<leader>cr', function()
	local path = vim.fn.expand('%')
	vim.fn.setreg('+', path)
	vim.notify('Copied: ' .. path)
end, { desc = 'Copy relative path' })

-- ctrl + j/k to sroll the quickfix list and center current line
map("n", "<C-j>", "<cmd>cnext<CR>zz")
map("n", "<C-k>", "<cmd>cprev<CR>zz")
