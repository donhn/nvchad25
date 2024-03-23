require "nvchad.options"
vim.opt.clipboard = ""

-- Set relative number on by default.
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.colorcolumn = "81"

-- snippet path
vim.g.vscode_snippets_path = vim.fn.stdpath "config" .. "/lua/custom/snippets/"
