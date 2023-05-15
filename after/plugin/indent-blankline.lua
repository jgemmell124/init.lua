vim.cmd [[highlight IndentBlanklineIndent guifg=#5C5C5C gui=nocombine]]
vim.cmd [[highlight IndentBlankLineSpace none]]

vim.opt.list = true
require("indent_blankline").setup {
    show_end_of_line = true,
    show_current_context_start = false,
    show_current_context = false,
    show_current_context_start_on_current_line = false,
    indent_blankline = false,
    space_char_blankline = "",
    char_highlight_list = {
        "IndentBlanklineIndent",
    }
}
