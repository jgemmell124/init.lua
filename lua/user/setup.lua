-- VIM settings -- 
local opt=vim.opt

-- Globals -- 
vim.g.mapleader=" "
-- ignore netrw?
--[[ vim.g.loaded_netrwPlugin = 1 ]]
vim.g.netrw_fastbrowse = 0

opt.fillchars = {eob = " "} -- remove the '~' at the end of the file

opt.number=true
opt.relativenumber=true

opt.tabstop=4
opt.shiftwidth=4
vim.o.expandtab=true
opt.smartindent=true

opt.cursorline=false -- highlight the current line

opt.termguicolors=true

--[[ opt.colorcolumn='80' ]]
opt.wrap=false

-- Show partial commands
opt.showcmd=true

-- Show matching brackets
opt.showmatch=true -- true

opt.scrolloff=8

opt.updatetime=50

opt.incsearch=true

opt.binary=true
opt.eol=false
opt.eof=false