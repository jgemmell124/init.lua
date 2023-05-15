-- VIM settings -- 
local opt=vim.opt

opt.number=true
opt.relativenumber=true

opt.tabstop=4
opt.shiftwidth=4
opt.expandtab=false
opt.smartindent=true

opt.termguicolors=true

opt.colorcolumn='80'
opt.wrap=false

-- Show partial commands
opt.showcmd=true

-- Show matching brackets
opt.showmatch=false -- true

opt.scrolloff=8

opt.updatetime=50

opt.incsearch=true

vim.g.mapleader=" "
