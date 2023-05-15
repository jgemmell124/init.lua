vim.cmd [[highlight IndentBlanklineIndent guifg=#5C5C5C gui=nocombine]]

vim.opt.list = false

require("indent_blankline").setup {
    char_highlight_list = {
        "IndentBlanklineIndent",
    }
}
