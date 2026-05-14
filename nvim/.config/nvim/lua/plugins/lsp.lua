-- LSP
-- need to install according language server
-- brew install [...]
vim.lsp.enable({
  "clangd",  -- C / C++
  "lua_ls",  -- Lua
  -- common
  "bashls",  -- Bash
  "jsonls",  -- JSON
  "yamlls",  -- YAML
  "marksman", -- Markdown
  "texlab",  -- LaTeX
})
