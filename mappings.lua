require "nvchad.mappings"

local map = vim.keymap.set

---------------------------------------------------------------------
-- General
---------------------------------------------------------------------

map("n", "sh", "<C-w>h", { desc = "viewport left" })
map("n", "sl", "<C-w>l", { desc = "viewport right" })
map("n", "sk", "<C-w>k", { desc = "viewport up" })
map("n", "sj", "<C-w>j", { desc = "viewport down" })

map("n", "<C-h>", ":vertical resize -5<CR>", { desc = "reduce vertical size" })
map("n", "<C-l>", ":vertical resize +5<CR>", { desc = "increase vertical size" })
map("n", "<C-j>", ":horizontal resize -5<CR>", { desc = "decrease horizontal size" })
map("n", "<C-k>", ":horizontal resize +5<CR>", { desc = "increase horizontal size" })

map({ "n", "v" }, "x", '"_x', { desc = "blackhole delete" })

map("n", "<leader>td", ":TodoTelescope keywords=TODO<CR>", { desc = "List TODOs" })
map("n", "<leader>gg", ":LazyGit<CR>", { desc = "LazyGit" })

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
