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
