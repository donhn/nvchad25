local is_wsl = vim.fn.has "wsl"
local is_windows = vim.fn.has "win32" or vim.fn.has "win64"
local is_mac = vim.fn.has "macunix"
local is_unix = vim.fn.has "unix"

-- clipboard loading
vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile" }, {
  once = true,
  callback = function()
    if is_windows == 1 and is_wsl == 0 then
      -- print "Using Windows clipboard."
      vim.g.clipboard = {
        copy = {
          ["+"] = "win32yank.exe -i --crlf",
          ["*"] = "win32yank.exe -i --crlf",
        },
        paste = {
          ["+"] = "win32yank.exe -o --lf",
          ["*"] = "win32yank.exe -o --lf",
        },
      }
    elseif is_mac == 1 then
      vim.g.clipboard = {
        copy = {
          ["+"] = "pbcopy",
          ["*"] = "pbcopy",
        },
        paste = {
          ["+"] = "pbpaste",
          ["*"] = "pbpaste",
        },
      }
    elseif is_unix == 1 or is_wsl == 1 then
      if vim.fn.executable "xclip" == 1 then
        vim.g.clipboard = {
          copy = {
            ["+"] = "xclip -selection clipboard",
            ["*"] = "xclip -selection clipboard",
          },
          paste = {
            ["+"] = "xclip -selection clipboard -o",
            ["*"] = "xclip -selection clipboard -o",
          },
        }
      elseif vim.fn.executable "xsel" == 1 then
        vim.g.clipboard = {
          copy = {
            ["+"] = "xsel --clipboard --input",
            ["*"] = "xsel --clipboard --input",
          },
          paste = {
            ["+"] = "xsel --clipboard --output",
            ["*"] = "xsel --clipboard --output",
          },
        }
      end
    end

    vim.opt.clipboard = "unnamedplus"
  end,
  desc = "Lazy load clipboard",
})

-- powershell
if is_windows == 1 and is_wsl == 0 then
  -- print "Running in Windows environment."
  -- Set shell to powershell.exe
  vim.o.shell = "pwsh.exe"

  -- Set shellxquote
  vim.o.shellxquote = ""

  -- Set shellcmdflag to include necessary PowerShell flags
  vim.o.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command "

  -- Set shellquote to empty string as it's not needed for PowerShell
  vim.o.shellquote = ""

  -- Set shellpipe and shellredir to use Out-File with UTF8 encoding
  vim.o.shellpipe = "| Out-File -Encoding UTF8 %s"
  vim.o.shellredir = "| Out-File -Encoding UTF8 %s"
end

-- Identify shader files as glsl.
-- vim.cmd [[
--   au BufRead,BufNewFile *.vert,*.frag,*.geom set filetype=glsl
-- ]]

-- Turn off colorcolumn for text files.
vim.cmd [[
  au BufRead,BufNewFile *.txt,*.log set colorcolumn=0
]]
