return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-neotest/nvim-nio",
    "jfpedroza/neotest-elixir",
  },
  config = function()
    require("neotest").setup {
      adapters = {
        require "neotest-elixir" {
          -- Tarefa Mix para rodar os testes (padrão é "test")
          mix_task = "test",
          -- Formatadores adicionais
          extra_formatters = { "ExUnit.CLIFormatter" },
        },
      },
      -- Configurações de interface
      icons = {
        failed = "✖",
        passed = "✓",
        running = "↻",
        skipped = "ﰸ",
        unknown = "?",
      },
      summary = { enabled = true },
      output = {
        enabled = true,
        open_on_run = true,
      },
    }
  end,
}
