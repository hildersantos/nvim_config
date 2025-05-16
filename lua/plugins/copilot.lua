return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  build = ":Copilot auth",
  opts = {
    suggestion = {
      enabled = true,
      auto_trigger = true,
      debounce = 75,
      keymap = {
        accept = "<C-f>",
        accept_word = "<C-w>",
        accept_line = "<C-l>",
        next = "<M-]>",
        prev = "<M-[>",
        dismiss = "<C-]>",
      },
    },
    panel = {
      enabled = false,
    },
    filetypes = {
      elixir = true,
      heex = true,
      eelixir = true,
      ["."] = true,
    },
  },
}
