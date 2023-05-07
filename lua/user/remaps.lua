
-- REMAPS --

local opts = {noremap = true, silent = true}
-- Shortened function name 
local keymap = vim.keymap.set
-- Change the leader to a space
vim.g.mapleader = " "

--------------------
------ Normal ------
--------------------
-- recenter move down
keymap("n", "<C-d>", "<C-d>zz")
-- recenter move up
keymap("n", "<C-u>", "<C-u>zz")
-- Navigate buffers --
-- switch between most recent buffers
keymap("n", "<leader><Tab>", "<C-^>", opts)
-- Swtich to buffer on right
keymap("n", "<S-l>", ":bnext<CR>", opts)
-- Swtich to buffer on left
keymap("n", "<S-h>", ":bprevious<CR>", opts)
-- new line without insert mode
keymap("n", "<leader><Enter>", "o<Esc>")
keymap("n", "<C-n>", "o<Esc>")
keymap("n", "<Tab-CR>", "o<Esc>")
-- Select All
keymap("n", "<C-a>", "gg<S-v>G")

--------------------
------ Insert ------
--------------------
-- Press jk for faster escape  
keymap("i", "jk", "<ESC>")


-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv")
keymap("v", ">", ">gv")
-- Prevent vim from replacing paste buffer
keymap("v", "p", '"_dP')
-- move a chunk of code
keymap("v", "<A-k>", ":m .-2<CR>==<S-v>", opts)
keymap("v", "<A-j>", ":m .+1<CR>==<S-v>", opts)
