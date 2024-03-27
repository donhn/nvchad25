return {
  "chrisgrieser/nvim-scissors",
  dependencies = "nvim-telescope/telescope.nvim", -- optional
  init = function()
    print(vim.g.vscode_snippets_path)
    require("luasnip.loaders.from_vscode").lazy_load { paths = { vim.fn.stdpath "config" .. "/lua/snippets/" } }
  end,
  opts = {
    snippetDir = vim.fn.stdpath "config" .. "/lua/snippets/",
  },
}
