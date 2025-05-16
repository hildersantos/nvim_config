return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "elixir", -- Para arquivos .ex e .exs
      "heex", -- Para templates LiveView (.heex)
      "eex", -- Para templates EEx (.eex)
      "html", -- Para HTML em templates
      "css", -- Para CSS
      "javascript", -- Para JS em templates
      "rust", -- Para arquivos Rust
      "typescript", -- Para TypeScript
      "tsx", -- Para TSX
    },
    highlight = { enable = true },
    indent = { enable = true },
  },
}
