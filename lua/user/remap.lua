
-- REMAPS --

-- Shortened function name 
local keymap = vim.keymap.set

-- Change the leader to a space
vim.g.mapleader = " "

-- Go to previous item 
keymap("n", "<leader>pv", vim.cmd.Ex)


-- Insert --
-- Press jk for faster escape  
keymap("i", "jk", "<ESC>")


-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv")
keymap("v", ">", ">gv")

-- Prevent vim from replacing paste buffer
keymap("v", "p", '"_dP')
