-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Toggle the file tree 
vim.keymap.set('n', '<leader>f', ":NvimTreeToggle<CR>", {silent = true})

local tree = require("nvim-tree")

tree.setup({
    sort_by = "case_sensitive",
    view = {
        width = 30,
    },
    renderer = {
        group_empty = true,
		indent_markers = {
			enable = true,
		}
    },
    filters = {
        custom = {".git/*"}, -- Ignore . git directory
        exclude = {".gitignore"}
    },
})


