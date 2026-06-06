-- Misc config


-- Neoscroll
-- Smooth scrolling neovim plugin written in lua
require('neoscroll').setup({
    hide_cursor = false,
    stop_eof = true,
    easing = 'quadratic',
    duration_multiplier = 0.30,
})


-- Oil.nvim
-- Neovim file explorer: edit your filesystem like a buffer
require("oil").setup({
    columns = { "mtime", "icon" },
    view_options = {
        show_hidden = true,
        sort = {
            { "type",  "asc" },
            { "mtime", "desc" },
        }
    },
})
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })


-- Lazygit.nvim
-- Plugin for calling lazygit from within neovim
vim.keymap.set('n', '<leader>lg', '<cmd>LazyGit<CR>', { desc = 'Lazygit' })
vim.keymap.set('n', '<leader>gb', function() vim.ui.open(vim.fn.systemlist('git remote get-url origin')[1]) end,
    { desc = 'Open git remote' })


-- Codediff (vscode like diffs :))
-- A Neovim plugin that provides VSCode-style diff rendering with two-tier highlighting, supporting both side-by-side and inline (unified) layouts.
require("codediff").setup({})
vim.keymap.set('n', '<leader>ru', '<cmd>CodeDiff<cr>', { desc = 'Code diff not staged' })
vim.keymap.set('n', '<leader>rm', '<cmd>CodeDiff main<cr>', { desc = 'Code diff main' })
vim.keymap.set('n', '<leader>rh', '<cmd>CodeDiff HEAD~1<cr>', { desc = 'Code diff previous commit' })


-- Markdown
-- Improve viewing Markdown in Neovim
require('render-markdown').setup()


-- Image
-- Bringing images to Neovim
require("image").setup({
    backend = "kitty", -- or "ueberzug" or "sixel"
    processor = "magick_cli", -- or "magick_rock"
    integrations = {
        markdown = {
            enabled = true,
            clear_in_insert_mode = true,
            download_remote_images = true,
            only_render_image_at_cursor = true,
            only_render_image_at_cursor_mode = "popup", -- or "inline"
            floating_windows = true, -- if true, images will be rendered in floating markdown windows
            filetypes = { "markdown", "vimwiki" }, -- markdown extensions (ie. quarto) can go here
        },
    },
})


-- Statusline 

-- lualine
-- A blazing fast and easy to configure neovim statusline plugin written in pure lua
require("lualine").setup()


-- todolist
require("todolist").setup({
    -- create you only file first
    target_file = "~/workspace/projects/todo/todo.md",
    border = "rounded", -- single, rounded, etc.
})

