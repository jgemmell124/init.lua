-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true


-- Toggle the file tree on the right
vim.keymap.set('n', '<leader>t', ":NvimTreeToggle<CR>")

-- Focus the file tree on the right
vim.keymap.set('n', '<leader>f', ":NvimTreeFocus<CR>")

local tree = require("nvim-tree")
-- empty setup using defaults
--require("nvim-tree").setup()

-- OR setup with some options
tree.setup({
    sort_by = "case_sensitive",
    view = {
        width = 30,
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,
    },
})




