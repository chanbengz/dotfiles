require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local telescope = require("telescope")

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map({ "n", "i", "v" }, "<Left>", "<Nop>")
map({ "n", "i", "v" }, "<Right>", "<Nop>")
map({ "n", "i", "v" }, "<Up>", "<Nop>")
map({ "n", "i", "v" }, "<Down>", "<Nop>")
map({ "n", "i", "v" }, "<C-j>", "7j")
map({ "n", "i", "v" }, "<C-k>", "7k")
map("n", "<Leader>mm", telescope.extensions.metals.commands)
map("n", "<Leader>k", ":Telescope keymaps<CR>", { desc = "Toogle Keymap" })
map("n", "<Leader>i", function()
  require("nvchad.term").toggle { pos = "float", id = "floatTerm" } end, { desc = "Terminal Toggle Floating term" })

-- deactivating mouse
vim.opt.mouse = ""
