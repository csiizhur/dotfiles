vim.keymap.set(
  "v",
  "a:",
  ":Tabularize /:\\zs<CR>",
  { noremap = true, silent = true, desc = "Align :" }
)

vim.keymap.set(
  "v",
  "as",
  ":Tabularize /\\s\\{1,}/<CR>",
  { noremap = true, silent = true, desc = "Align by spaces (kitty)" }
)

vim.keymap.set(
  "n",
  "<leader>ka",
  function()
    vim.cmd([[g!/^\s*#/Tabularize /\s\zs/]])
    vim.cmd([[g!/^\s*#/Tabularize /#/]])
  end,
  { silent = true, desc = "Align kitty config (ignore comment lines)" }
)

local map = vim.keymap.set

vim.keymap.set("n", "<leader>w", ":w<CR>", { silent = true })
vim.keymap.set("n", "<leader>q", ":q<CR>", { silent = true })

map("n", "<leader>w", ":w<CR>", { silent = true })

--[[map("v", "a=", ":Tabularize /=<CR>", { noremap = true, silent = true, desc = "Align by = ghostty config" })]]
map("v", "a=", ":Tabularize /\\s\\zs=/", {silent = true, desc = "Align by = ghostty config" })
map("v", "a1", ":Tabularize /:\\zs<CR>", { silent = true })
