return {
  "luckasRanarison/tailwind-tools.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    require("tailwind-tools").setup {
      server = {
        settings = {
          -- Configuração para Phoenix/LiveView
          includeLanguages = {
            elixir = "phoenix-heex",
            heex = "phoenix-heex",
            eelixir = "html-eex",
          },
          experimental = {
            classRegex = {
              [[class="([^"]*)"]], -- para heex e eex
              [[class: "([^"]*)"]], -- para JS/TS/JSX/TSX
            },
          },
        },
      },
      document_color = { enabled = true }, -- Mostra cores inline
      conceal = { enabled = false }, -- Oculta classes Tailwind longas
    }
  end,
}
