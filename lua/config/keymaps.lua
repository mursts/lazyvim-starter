-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "x", '"_x')
keymap.set("n", "X", '"_X')
keymap.set("n", "s", '"_s')

-- automatically joump to end of text you pasted
keymap.set("v", "y", "y`]")
keymap.set({ "v", "n" }, "p", "p`]")

keymap.set("i", "jj", "<ESC>", opts)

keymap.set("n", "<C-a>", "gg<S-v>G")

keymap.set("n", "j", "gj", opts)
keymap.set("n", "k", "gk", opts)

-- Split window
keymap.set("n", "ss", ":split<CR>", opts)
keymap.set("n", "sv", ":vsplit<CR>", opts)
keymap.set("n", "--", ":split<CR>", opts)
keymap.set("n", "||", ":vsplit<CR>", opts)

-- Move window
--keymap.set("n", "<Space>", "<C-w>w")
-- keymap.set("", "<C-h>", "<C-w>h", opts)
-- keymap.set("", "<C-k>", "<C-w>k", opts)
-- keymap.set("", "<C-j>", "<C-w>j", opts)
-- keymap.set("", "<C-l>", "<C-w>l", opts)

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- indent
keymap.set("x", "<", "<gv", opts)
keymap.set("x", ">", ">gv", opts)
