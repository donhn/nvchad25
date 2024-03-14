local function filenameFirst(_, path)
  local tail = vim.fs.basename(path)
  local parent = vim.fs.dirname(path)
  if parent == "." then
    return tail
  end
  return string.format("%s\t\t%s", tail, parent)
end

vim.api.nvim_create_autocmd("FileType", {
  pattern = "TelescopeResults",
  callback = function(ctx)
    vim.api.nvim_buf_call(ctx.buf, function()
      vim.fn.matchadd("TelescopeParent", "\t\t.*$")
      vim.api.nvim_set_hl(0, "TelescopeParent", { link = "Comment" })
    end)
  end,
})

return {
  "nvim-telescope/telescope.nvim",
  opts = function()
    local conf = require "nvchad.configs.telescope"
    conf.defaults.mappings.i = {
      ["<C-j>"] = require("telescope.actions").move_selection_next,
      ["<C-k>"] = require("telescope.actions").move_selection_previous,
    }
    conf.defaults.path_display = filenameFirst

    return conf
  end,
}
