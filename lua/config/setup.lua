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

-- Indenting --
opt.tabstop=4 -- show tabs as 4 spaces
opt.shiftwidth=4 -- when you press tab, it inserts 4 spaces
opt.softtabstop=4 -- backspace over 4 spaces
opt.expandtab=true -- use spaces instead of tabs

-- white space set up
opt.list=true
opt.listchars='tab:»·,trail:·,extends:→,precedes:←,nbsp:␣'

opt.smartindent=true

opt.cursorline=false -- highlight the current line

opt.termguicolors=true

opt.colorcolumn='80'
opt.wrap=false

-- Show partial commands
opt.showcmd=true

-- Show matching brackets
opt.showmatch=true -- true

-- Give 8 lines at bottom --
opt.scrolloff=8

-- sign column (space between numbers and edge) --
opt.signcolumn='yes'

opt.updatetime=50

opt.incsearch=true

opt.eol=false
opt.eof=false

-- avoid showing message extra message when using completion
opt.ffs='unix,dos,mac'

vim.keymap.set('i', '<C-J>', 'copilot#Accept("\\<CR>")', {
    expr = true,
    replace_keycodes = false
})

vim.g.copilot_no_tab_map = true
