return {
  "neovim/nvim-lspconfig",
  dependencies = {
    { "aznhe21/actions-preview.nvim" },

    {
      "SmiteshP/nvim-navbuddy",
      dependencies = {
        "SmiteshP/nvim-navic",
        "MunifTanjim/nui.nvim",
      },
    },
  },
  config = function()
    require("nvchad.configs.lspconfig").defaults()
    require "configs.lspconfig"
  end,
}
