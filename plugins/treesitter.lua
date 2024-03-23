return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "vimdoc",
      "lua",
      "python",
      "bash",
      "cpp",
      "c",
      "markdown",
    },
    indent = {
      enable = true,
      disable = {
        "cpp",
        "python",
      },
    },
  },
}
