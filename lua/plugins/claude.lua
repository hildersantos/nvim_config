return {
  "pasky/claude.vim",
  config = function()
    -- Configuração da API da Anthropic
    vim.g.claude_api_key = os.getenv "ANTHROPIC_API_KEY" -- Obtém do ambiente

    -- Modelo a ser usado
    vim.g.claude_model = "claude-3-7-sonnet-latest"

    -- Tamanho máximo de tokens
    vim.g.claude_max_tokens = 4096
  end,
}
