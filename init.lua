require("user.remap")
require("user.packer")

local opt=vim.opt

opt.number=true
opt.relativenumber=true

opt.tabstop=4
opt.shiftwidth=4
opt.expandtab=true
opt.smartindent=true

opt.termguicolors=true

opt.colorcolumn="80"

-- Show partial commands
opt.showcmd=true

-- Show matching brackets
opt.showmatch=true

