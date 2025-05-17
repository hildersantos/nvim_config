require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "emmet_language_server" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers

-- Specific configuration for emmet_language_server
local lspconfig = require "lspconfig"
lspconfig.emmet_language_server.setup {
  filetypes = {
    "html",
    "css",
    "scss",
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "heex", -- Phoenix LiveView templates
    "eex", -- Phoenix EEx templates
    "elixir", -- For inline HTML in Elixir
  },
  init_options = {
    -- Configuration for HTML/JSX/HEex
    showAbbreviationSuggestions = true,
    showExpandedAbbreviation = "always",
    showSuggestionsAsSnippets = true,
    preferences = {
      ["output.selfClosingStyle"] = "xhtml", -- Use self-closing style for tags
      ["bem.enabled"] = true, -- Enable BEM support
    },
  },
}
