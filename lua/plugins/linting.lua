return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require "none-ls"

    null_ls.setup {
      sources = {
        -- Formatação com prettier
        null_ls.builtins.formatting.prettier.with {
          filetypes = {
            "javascript",
            "javascriptreact",
            "typescript",
            "typescriptreact",
            "css",
            "html",
            "json",
            "yaml",
            "markdown",
          },
        },

        -- ESLint
        null_ls.builtins.diagnostics.eslint_d,
        null_ls.builtins.code_actions.eslint_d,
      },
    }

    -- Formatação no salvamento
    vim.api.nvim_create_autocmd("BufWritePre", {
      pattern = {
        "*.js",
        "*.jsx",
        "*.ts",
        "*.tsx",
        "*.css",
        "*.scss",
        "*.json",
        "*.html",
      },
      callback = function()
        vim.lsp.buf.format { timeout_ms = 500 }
      end,
    })
  end,
}
