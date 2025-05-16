return {
  "elixir-tools/elixir-tools.nvim",
  version = "*",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local elixir = require "elixir"
    local elixirls = require "elixir.elixirls"

    elixir.setup {
      -- Configuração do ElixirLS (inclui Dialyzer)
      elixirls = {
        enable = true,
        settings = elixirls.settings {
          dialyzerEnabled = true,
          enableTestLenses = true,
          fetchDeps = false,
          suggestSpecs = false,
        },
      },
      -- Suporte ao NextLS (alternativa mais recente ao ElixirLS)
      nextls = {
        enable = true,
        init_options = {
          experimental = {
            completions = { enable = true },
          },
          -- Habilitando Credo como extensão
          extensions = {
            credo = { enable = true },
          },
        },
      },
      -- Suporte ao vim-projectionist (criação de arquivos Elixir/Phoenix)
      projectionist = {
        enable = true,
      },
    }
  end,
}
