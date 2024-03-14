return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      -- lua
      "lua-language-server",
      "stylua",
      -- python
      "jedi-language-server",
      "black",
      "pyright",
      -- bash
      "beautysh",
      "bash-language-server", -- update to latest node.js
      -- C/C++
      "clangd",
      "clang-format",
      "cmake-language-server",
      "cmakelang",
      "cpptools",
    },
  },
}
