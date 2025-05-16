return {
  "mrcjkb/rustaceanvim",
  version = "^3",
  ft = { "rust" },
  config = function()
    vim.g.rustaceanvim = {
      server = {
        on_attach = function(client, buffer)
          require("core.utils").load_mappings("lspconfig", { buffer = buffer })
          require("nvchad.signature").setup(client)
        end,
      },
    }

    -- Formatação automática para Rust
    local format_sync_grp = vim.api.nvim_create_augroup("Format", {})
    vim.api.nvim_create_autocmd("BufWritePre", {
      pattern = "*.rs",
      callback = function()
        vim.lsp.buf.format { timeout_ms = 200 }
      end,
      group = format_sync_grp,
    })
  end,
}
