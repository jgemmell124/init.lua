return {
    "ibhagwan/fzf-lua",

    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },

    config = function ()
        local fzf = require("fzf-lua")
        fzf.setup({
            "default", -- profile "telescope"
            builtin = {
                disable = { "netrw" }
            },
            files = {
                formatter = "path.filename_first",
                git_icons = true,
                prompt = "Files❯ ",
                preview_opts = "nohidden",
                no_header = true,
                cwd_header = false,
                cwd_prompt = false,
            },
            git = {
                files = {
                    formatter = "path.filename_first",
                }
            },
            buffers = {
                formatter = "path.filename_first",
            }
        })
        vim.keymap.set("n", "<leader>pf", fzf.files, {})
        vim.keymap.set("n", "<leader>pg", fzf.live_grep, {})
        vim.keymap.set("n", "<leader>pb", fzf.buffers, {})
        vim.keymap.set("n", "<leader>pr", fzf.resume, {})
        vim.keymap.set("n", "<leader>pc", fzf.grep_cword, {})
        vim.keymap.set("n", "<C-p>", fzf.git_files, {})
    end
}
