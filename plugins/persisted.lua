return {
  "olimorris/persisted.nvim",
  event = "VeryLazy",
  config = function()
    require("persisted").setup {
      on_autoload_no_session = function()
        vim.notify "No existing session to load."
      end,
      silent = true,
      use_git_branch = true,
      ignored_branches = { "^main" },
    }
  end,
}
