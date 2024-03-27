-- Ensure Mason is loaded
local status, mason = pcall(require, "mason")
if (not status) then return end

mason.setup()

-- Ensure Mason LSP config is loaded
local status_lspconfig, mason_lspconfig = pcall(require, "mason-lspconfig")
if (not status_lspconfig) then return end

mason_lspconfig.setup({
    ensure_installed = {
      "black",
      "docker-compose-language-service",
      "dockerfile-language-server",
      "eslint-lsp",
      "flake8",
      "jsonld-lsp",
      "jsonlint",
      "lua-language-server",
      "mypy",
      "pyright",
      "python-lsp-server",
      "r-languageserver",
      "sqlfluff",
      "sqlls",
      "terraform-ls",
    },
})

