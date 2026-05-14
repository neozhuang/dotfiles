-- Treesitter
-- vim.cmd('syntax off') -- Make it obvious if treesitter is missing
require("nvim-treesitter").install({
  "lua",
  "vim",
  "vimdoc",
  "bash",
  "python",
  "javascript",
  "typescript",
  "tsx",
  "json",
  "markdown",
  "markdown_inline",
  "html",
  "css",
  "c",
  "cpp",
  "latex",
  "bibtex",
  "toml",
  "yaml",
  "xml",
  "dockerfile",
  "gitignore",
  "git_config",
  "gitcommit",
  "diff",
  "regex",
  "sql",
  "make",
  "kitty",
})

vim.api.nvim_create_autocmd("FileType", {
  callback = function(args)
      -- syntax highlighting, provided by Neovim
    local ok = pcall(vim.treesitter.start, args.buf)
    if not ok then
      return
    end
      -- folds, provided by Neovim
    --vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
    --vim.wo.foldmethod = "expr"
      -- indentation, provided by nvim-treesitter
    vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
  end,
})
