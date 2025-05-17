require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- General mappings
map("n", "<TAB>", "<cmd>bnext<CR>", { desc = "Next buffer" })
map("n", "<S-TAB>", "<cmd>bprevious<CR>", { desc = "Previous buffer" })
map("n", "<leader>sv", "<cmd>vsplit<CR>", { desc = "Split vertical" })
map("n", "<leader>sh", "<cmd>split<CR>", { desc = "Split horizontal" })
map("n", "<leader>x", "<cmd>bd<CR>", { desc = "Close buffer" })
map("n", "<C-s>", "<cmd>w<CR>", { desc = "Save file" })
map("n", "<ESC>", "<cmd>noh<CR>", { desc = "Clear highlights" })

-- Telescope Projects mapping
map("n", "<leader>pp", "<cmd>Telescope project<CR>", { desc = "Find projects" })

-- Elixir mappings
map("n", "<space>fp", "<cmd>ElixirFromPipe<cr>", { desc = "Convert from pipe operator" })
map("n", "<space>tp", "<cmd>ElixirToPipe<cr>", { desc = "Convert to pipe operator" })
map("v", "<space>em", "<cmd>ElixirExpandMacro<cr>", { desc = "Expand Elixir macro" })

-- Neotest mappings
map("n", "<leader>tt", function()
  require("neotest").run.run()
end, { desc = "Run nearest test" })

map("n", "<leader>tf", function()
  require("neotest").run.run(vim.fn.expand "%")
end, { desc = "Run file tests" })

map("n", "<leader>ta", function()
  require("neotest").run.run { suite = true }
end, { desc = "Run all tests" })

map("n", "<leader>ts", function()
  require("neotest").summary.toggle()
end, { desc = "Toggle test summary" })

map("n", "<leader>to", function()
  require("neotest").output.open { enter = true }
end, { desc = "Open test output" })

-- Git mappings (Gitsigns)
map("n", "]c", function()
  if vim.wo.diff then
    vim.cmd.normal { "]c", bang = true }
  else
    require("gitsigns").nav_hunk "next"
  end
end, { desc = "Next hunk" })

map("n", "[c", function()
  if vim.wo.diff then
    vim.cmd.normal { "[c", bang = true }
  else
    require("gitsigns").nav_hunk "prev"
  end
end, { desc = "Previous hunk" })

map("n", "<leader>gs", function()
  require("gitsigns").stage_hunk()
end, { desc = "Stage hunk" })

map("n", "<leader>gr", function()
  require("gitsigns").reset_hunk()
end, { desc = "Reset hunk" })

map("n", "<leader>gS", function()
  require("gitsigns").stage_buffer()
end, { desc = "Stage buffer" })

map("n", "<leader>gp", function()
  require("gitsigns").preview_hunk()
end, { desc = "Preview hunk" })

map("n", "<leader>gb", function()
  require("gitsigns").blame_line()
end, { desc = "Blame line" })

-- Fugitive mappings
map("n", "<leader>gg", "<cmd>Git<CR>", { desc = "Git status" })
map("n", "<leader>gc", "<cmd>Git commit<CR>", { desc = "Git commit" })
map("n", "<leader>gp", "<cmd>Git push<CR>", { desc = "Git push" })
map("n", "<leader>gl", "<cmd>Git pull<CR>", { desc = "Git pull" })
map("n", "<leader>gd", "<cmd>Gdiffsplit<CR>", { desc = "Git diff" })

-- Claude mappings
map("n", "<leader>cc", "<cmd>Claude<CR>", { desc = "Open Claude Chat" })
map("v", "<leader>ca", "<cmd>ClaudeAsk<CR>", { desc = "Ask Claude about selection" })
map("v", "<leader>cc", "<cmd>ClaudeCode<CR>", { desc = "Ask Claude to modify code" })

-- To disable default mappings, use vim.keymap.del
-- Example: To disable Ctrl-k mapping in insert mode
-- local nomap = vim.keymap.del
-- nomap("i", "<C-k>")

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
