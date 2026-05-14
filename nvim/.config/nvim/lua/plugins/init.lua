-- Plugins
-- Pack guide: 
-- https://echasnovski.com/blog/2026-03-13-a-guide-to-vim-pack#update
vim.pack.add({
    'https://github.com/folke/tokyonight.nvim',
	'https://github.com/ibhagwan/fzf-lua',
	'https://github.com/nvim-treesitter/nvim-treesitter', -- also $ brew install tree-sitter-cli
	'https://github.com/neovim/nvim-lspconfig',
	'https://github.com/karb94/neoscroll.nvim',
	--'https://github.com/mfussenegger/nvim-dap',
	'https://github.com/stevearc/oil.nvim',
    'https://github.com/nvim-tree/nvim-web-devicons',
	'https://github.com/kdheepak/lazygit.nvim',
	'https://github.com/esmuellert/codediff.nvim',
	--'https://github.com/goolord/alpha-nvim',
	'https://github.com/MeanderingProgrammer/render-markdown.nvim',
    'https://github.com/3rd/image.nvim',
    'https://github.com/saghen/blink.lib',
    'https://github.com/saghen/blink.cmp',
    'https://github.com/nvim-lualine/lualine.nvim',
})

require("plugins.colortheme")
require("plugins.treesitter")
require("plugins.fzf")
require("plugins.cmp")  -- cmp should be placed before lsp
require("plugins.lsp")
require("plugins.misc")
