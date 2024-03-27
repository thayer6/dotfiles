-- General on_attach function that integrates aerial with LSP servers
local function on_attach(client, bufnr)
  -- This sets up aerial's buffer-local key mappings
  require('aerial').on_attach(client, bufnr)

  -- Example: Setting a buffer-local keymap to toggle the aerial window with <leader>a
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>o', '<cmd>AerialToggle<CR>', { noremap = true, silent = true })
  -- Jump forwards/backwards with '{' and '}'
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '{', '<cmd>AerialPrev<CR>', {})
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '}', '<cmd>AerialNext<CR>', {})
  -- Jump up the tree with '[[' or ']]'
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '[[', '<cmd>AerialPrevUp<CR>', {})
  vim.api.nvim_buf_set_keymap(bufnr, 'n', ']]', '<cmd>AerialNextUp<CR>', {})
end

-- LSP server setup for Python using pyright
require('lspconfig')['pyright'].setup{
  on_attach = on_attach,
}

-- LSP server setup for R
require('lspconfig')['r_language_server'].setup{
  on_attach = on_attach,
}

-- LSP server setup for SQL
require('lspconfig')['sqlls'].setup{
  on_attach = on_attach,
}

