-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "w<Tab>", function()
  vim.cmd("normal! i() ")
  vim.cmd("normal! F)")
  vim.cmd("startinsert")
end, { noremap = true, silent = true, desc = "Quick Parenteses Opening in insert mode" })

vim.keymap.set("n", "w<Tab>", function()
  vim.cmd("normal! i() ")
  vim.cmd("normal! F)")
  vim.cmd("startinsert")
end, { noremap = true, silent = true, desc = "Quick Parenteses Opening in normal mode" })
