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

-- keymap
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(event)
    local map = function(lhs, rhs, desc)
      vim.keymap.set("n", lhs, rhs, { buffer = event.buf, desc = desc })
    end

    map("gd", vim.lsp.buf.definition, "Go to definition")
    map("gD", vim.lsp.buf.declaration, "Go to declaration")
  end,
})
