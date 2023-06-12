
-- REMAPS --

local opts = {noremap = true, silent = true}
-- Shortened function name 
local keymap = vim.keymap.set
-- Change the leader to a space
vim.g.mapleader = " "

--------------------
------ Normal ------
--------------------
-- Close the buffer 
keymap("n", "<C-q>", ":Bdelete<CR>", opts)
-- recenter move down
keymap("n", "<C-d>", "<C-d>zz")
-- recenter move up
keymap("n", "<C-u>", "<C-u>zz")
-- Navigate buffers --
-- switch between most recent buffers
keymap("n", "<leader><Tab>", "<C-^>", opts)
-- Swtich to buffer on right
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<Tab>", ":BufferLineCycleNext<CR>", opts)
-- Swtich to buffer on left
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", opts)
-- window maps -- 
-- Create a Split windows
keymap("n", "<leader>sv", "<C-w>v")
keymap("n", "<leader>ss", "<C-w><C-s>")
keymap("n", "<leader>n", "<C-w>v <C-w>w :Telescope find_files<CR>", opts)
keymap("n", "<leader>ts", ":TSHighlightCapturesUnderCursor<CR>", opts)
-- keymap("n", "<leader>qq", ":q<CR>")
-- Navigate windows
keymap("n", "<leader>j", "<C-w>j")
keymap("n", "<leader>k", "<C-w>k")
keymap("n", "<leader>h", "<C-w>h")
keymap("n", "<leader>l", "<C-w>l")
-- Move windows around
keymap("n", "<leader>sj", "<C-w>J")
keymap("n", "<leader>sk", "<C-w>K")
keymap("n", "<leader>sh", "<C-w>H")
keymap("n", "<leader>sl", "<C-w>L")
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
keymap("n", "<leader>k", "<cmd>lnext<CR>zz")
keymap("n", "<leader>j", "<cmd>lprev<CR>zz")

keymap("n", "<C-s>", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
keymap("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
-- Open Mardown
keymap("n", "<leader>md", ":MarkdownPreview<CR>", opts)
keymap("n", "<leader>mc", ":MarkdownPreviewStop<CR>", opts)

-- Find Todo's
keymap("n", "<leader>td", ":TodoTrouble<CR>", opts)

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
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)
