
-- REMAPS --

local opts = {noremap = true, silent = true}
-- Shortened function name
local keymap = vim.keymap.set
-- Change the leader to a space
vim.g.mapleader = " "

--------------------
------ Insert ------
--------------------
-- Press jk for faster escape
keymap("i", "jk", "<ESC>")

--------------------
------ Normal ------
--------------------
-- Open Netrw
--[[ keymap("n", "<leader>f", ":Ex<CR>") ]]
-- Close the buffer
keymap("n", "<C-q>", ":bdelete<CR>", opts)
-- recenter move down
keymap("n", "<C-d>", "<C-d>zz")
-- recenter move up
keymap("n", "<C-u>", "<C-u>zz")
-- recenter last cursor location
keymap("n", "<C-o>", "<C-o>zz")

-- Navigate buffers --
-- switch between most recent buffers
keymap("n", "<leader><Tab>", "<C-^>", opts)
-- window maps --
-- Create a Split windows
keymap("n", "<leader>sv", "<C-w>v")
keymap("n", "<leader>ss", "<C-w><C-s>")
keymap("n", "<leader>n", "<C-w>v <C-w>w :Telescope find_files<CR>", opts)
keymap("n", "<leader>ts", ":TSHighlightCapturesUnderCursor<CR>", opts)
keymap("n", "<leader>ti", ":Inspect<CR>", opts)
-- keymap("n", "<leader>qq", ":q<CR>")
-- Resize windows
keymap("n", "<C-left>", "<C-w><")
keymap("n", "<C-right>", "<C-w>>")
keymap("n", "<C-up>", "<C-w>+")
keymap("n", "<C-down>", "<C-w>-")
-- new line without insert mode
keymap("n", "<leader><Enter>", "o<Esc>")
keymap("n", "<C-n>", "o<Esc>")
keymap("n", "<Tab-CR>", "o<Esc>")
-- Select All
keymap("n", "<C-a>", "gg<S-v>G")
-- Move a chunk of code
keymap("n", "<A-j>", ":m +1<CR>==", opts)
keymap("n", "<A-k>", ":m .-2<CR>==", opts)
-- Quick Fix
keymap("n", "<C-k>", "<cmd>cnext<CR>zz")
keymap("n", "<C-j>", "<cmd>cprev<CR>zz")
keymap("n", "<leader>ck", "<cmd>lnext<CR>zz")
keymap("n", "<leader>cj", "<cmd>lprev<CR>zz")
-- Find and replace
keymap("n", "<C-s>", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
keymap("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
keymap("n", "<leader>td", ":TodoQuickFix<CR>", opts)
keymap("n", "<leader>ptd", ":TodoTelescope<CR>", opts)
--------------------
------ Visual ------
--------------------
-- Stay in indent mode
keymap("v", "<", "<gv")
keymap("v", ">", ">gv")
-- Prevent vim from replacing paste buffer
keymap("v", "p", '"_dP')
-- move a chunk of code
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)
