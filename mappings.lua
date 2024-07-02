require "nvchad.mappings"

local map = vim.keymap.set

---------------------------------------------------------------------
-- General
---------------------------------------------------------------------

-- map("n", "sh", "<C-w>h", { desc = "viewport left" })
-- map("n", "sl", "<C-w>l", { desc = "viewport right" })
-- map("n", "sk", "<C-w>k", { desc = "viewport up" })
-- map("n", "sj", "<C-w>j", { desc = "viewport down" })

map("n", "<C-h>", ":vertical resize -5<CR>", { desc = "reduce vertical size" })
map("n", "<C-l>", ":vertical resize +5<CR>", { desc = "increase vertical size" })
map("n", "<C-j>", ":horizontal resize -5<CR>", { desc = "decrease horizontal size" })
map("n", "<C-k>", ":horizontal resize +5<CR>", { desc = "increase horizontal size" })

map({ "n", "v" }, "x", '"_x', { desc = "blackhole delete" })

map("n", "<leader>ftd", ":TodoTelescope keywords=TODO<CR>", { desc = "List TODOs" })
map("n", "<leader>fs", ":Telescope persisted<CR>", { desc = "List sessions" })
map("n", "<leader>gg", ":LazyGit<CR>", { desc = "LazyGit" })

map("n", "<leader>cfp", function()
  vim.fn.setreg("+", vim.fn.expand "%:p:~")
end, { desc = "Copy full path to clipboard" })

map("n", "<leader>cfd", function()
  vim.fn.setreg("+", vim.fn.expand "%:p:~:h")
end, { desc = "Copy directory path to clipboard" })

map("n", "<leader>crp", function()
  vim.fn.setreg("+", vim.fn.expand "%:~:.")
end, { desc = "Copy relative path to clipboard" })

map("n", "<leader>cfn", function()
  vim.fn.setreg("+", vim.fn.expand "%:t")
end, { desc = "Copy file name to clipboard" })

---------------------------------------------------------------------
-- LSP
---------------------------------------------------------------------
map("n", "<leader>fm", function()
  require("conform").format()
end, { desc = "LSP Formatting" })

map("n", "<leader>oc", ":silent !code %<CR>", { desc = "Open current file in VS Code", silent = true })

map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { desc = "Add breakpoint at line" })
map("n", "<leader>dr", "<cmd> DapContinue <CR>", { desc = "Start or continue the debugger" })

map("n", "<leader>dt", function()
  require("dapui").toggle()
end, { desc = "Toggle DAP UI" })

map("n", "<leader>ca", function()
  require("actions-preview").code_actions()
end, { desc = "Preview code action" })

map("n", "<leader>fn", "<cmd> Navbuddy<CR>", { desc = "Navbuddy" })

---------------------------------------------------------------------
-- Flash
---------------------------------------------------------------------
map("n", "<leader>tf", function()
  require("flash").toggle()
end, { desc = "Toggle Flash Search" })

---------------------------------------------------------------------
-- Scissors
---------------------------------------------------------------------
vim.api.nvim_create_user_command("EditSnippet", function()
  require("scissors").editSnippet()
end, { desc = "Edit nvim-scissor snippets." })

-- When used in visual mode prefills the selection as body.
vim.keymap.set({ "n", "x" }, "<leader>ns", function()
  require("scissors").addNewSnippet()
end)
