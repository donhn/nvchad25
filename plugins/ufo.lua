return {
  "kevinhwang91/nvim-ufo",
  dependencies = "kevinhwang91/promise-async",
  event = "VimEnter", -- needed for folds to load in time and comments closed
  keys = {
    {
      "zM",
      function()
        require("ufo").closeAllFolds()
      end,
      desc = " 󱃄 Close All Folds",
    },
    {
      "zR",
      function()
        require("ufo").openFoldsExceptKinds { "comment", "imports" }
      end,
      desc = " 󱃄 Open All Folds",
    },
    {
      "zK",
      function()
        local winid = require("ufo").peekFoldedLinesUnderCursos()
        if not winid then
          vim.lsp.buf.hover()
        end
      end,
      desc = "Peek Fold",
    },
  },
  init = function()
    vim.opt.foldcolumn = "0"
    vim.opt.foldlevel = 99
    vim.opt.foldlevelstart = 99
    vim.opt.foldenable = true
  end,
  opts = {
    provider_selector = function(bufnr, filetype, buftype)
      return { "lsp", "indent" }
    end,
  },
}
