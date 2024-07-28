return {
  "folke/trouble.nvim",
  opts = {}, -- for default options, refer to the configuration section for custom setup.
  cmd = "Trouble",
  keys = {
    {
      "<leader>td",
      "<cmd>Trouble diagnostics focus=true win.position=bottom<cr>",
      desc = "Trouble Diagnostics Focus",
    },
    {
      "<leader>tD",
      "<cmd>Trouble diagnostics toggle win.position=bottom<cr>",
      desc = "Trouble Diagnostics Toggle",
    },
    {
      "<leader>tbd",
      "<cmd>Trouble diagnostics win.position=bottom filter.buf=0<cr>",
      desc = "Trouble Diagnostics Focus (Buffer)",
    },
    {
      "<leader>ts",
      "<cmd>Trouble symbols focus=true<cr>",
      desc = "Trouble Symbols Focus",
    },
    {
      "<leader>tS",
      "<cmd>Trouble symbols toggle focus=false<cr>",
      desc = "Trouble Symbols Toggle",
    },
    {
      "<leader>tbs",
      "<cmd>Trouble symbols focus=true filter.buf=0<cr>",
      desc = "Trouble Symbols Focus (Buffer)",
    },
    {
      "<leader>tr",
      "<cmd>Trouble lsp focus=true win.position=left<cr>",
      desc = "Trouble References Focus",
    },
    {
      "<leader>tR",
      "<cmd>Trouble lsp toggle focus=false win.position=left<cr>",
      desc = "Trouble References Toggle",
    },
    {
      "<leader>tl",
      "<cmd>Trouble loclist toggle focus=true<cr>",
      desc = "Location List (Trouble)",
    },
    {
      "<leader>tq",
      "<cmd>Trouble qflist toggle focus=true<cr>",
      desc = "Quickfix List (Trouble)",
    },
  },
}
