-- Plugins
-- Pack guide: 
-- https://echasnovski.com/blog/2026-03-13-a-guide-to-vim-pack#update
vim.pack.add({
    -- Theme / UI
    'https://github.com/folke/tokyonight.nvim',
    'https://github.com/nvim-tree/nvim-web-devicons',
    'https://github.com/nvim-lualine/lualine.nvim',

    -- Search / Navigation
	'https://github.com/ibhagwan/fzf-lua',

    -- Syntax / Language
	'https://github.com/nvim-treesitter/nvim-treesitter', -- also $ brew install tree-sitter-cli
	'https://github.com/neovim/nvim-lspconfig',

    -- Completion / Snippets
    'https://github.com/saghen/blink.lib',
    'https://github.com/saghen/blink.cmp',
    'https://github.com/rafamadriz/friendly-snippets',

    -- File Explorer / Filesystem
	'https://github.com/stevearc/oil.nvim',
    'https://github.com/nvim-tree/nvim-tree.lua',

    -- Git / Diff
	'https://github.com/kdheepak/lazygit.nvim',
	'https://github.com/esmuellert/codediff.nvim',

    -- Markdown / Media
	'https://github.com/MeanderingProgrammer/render-markdown.nvim',
    'https://github.com/3rd/image.nvim',
    'https://github.com/hakonharnes/img-clip.nvim',

    -- Editing
	'https://github.com/karb94/neoscroll.nvim',
    "https://github.com/kylechui/nvim-surround",

    -- Personal / Workflow
    'https://github.com/neozhuang/daily-notes.nvim',
    -- AI
    "https://www.github.com/nvim-lua/plenary.nvim",
    "https://www.github.com/olimorris/codecompanion.nvim",

    -- Disabled
	--'https://github.com/mfussenegger/nvim-dap',
	--'https://github.com/goolord/alpha-nvim',
})


require("plugins.colortheme")
require("plugins.treesitter")
require("plugins.fzf")
require("plugins.cmp")  -- cmp should be placed before lsp
require("plugins.lsp")
require("plugins.filetree")
require("plugins.ai")
require("plugins.misc")
