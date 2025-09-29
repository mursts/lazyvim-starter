-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.relativenumber = false

opt.backup = false
opt.swapfile = false
opt.undofile = false

opt.scrolloff = 5
opt.sidescrolloff = 5

opt.splitbelow = true
opt.splitright = true

opt.clipboard = "unnamedplus"

if vim.fn.has("wsl") then
  vim.g.clipboard = {
    name = "win32yank-wsl",
    copy = {
      ["+"] = "win32yank.exe -i --crlf",
      ["*"] = "win32yank.exe -i --crlf",
    },
    paste = {
      ["+"] = "win32yank.exe -o --crlf",
      ["*"] = "win32yank.exe -o --crlf",
    },
    cache_enable = 0,
  }
end
