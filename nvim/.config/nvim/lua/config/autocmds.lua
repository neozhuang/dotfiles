-- Highlight yanks
vim.api.nvim_create_autocmd('TextYankPost', {
	group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
	callback = function() vim.highlight.on_yank() end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "qf",
  callback = function()
    local opts = { buffer = true }

    vim.keymap.set("n", "<C-v>", function()
      vim.cmd("vertical wincmd F")
    end, opts)

    vim.keymap.set("n", "<C-x>", function()
      vim.cmd("wincmd F")
    end, opts)
  end,
})

