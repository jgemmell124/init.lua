return {
  "nvim-tree/nvim-tree.lua",
  enabled = true,
  config = function ()
    -- disable netrw at the very start of your init.lua
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    -- optionally enable 24-bit colour
    vim.opt.termguicolors = true

    local tree = require("nvim-tree").setup({
      sort = { sorter = "case_sensitive",
      },
      view = {
        width = 40,
      },
      update_focused_file = {
        enable = true,
        update_cwd = true,
      },
      renderer = {
        icons = {
          show = {
            file = true,
            folder = false,
            folder_arrow = true,
            git = true,
          }
        },
        indent_markers = {
          inline_arrows = true,
          enable = true,

        }
      },
    })
    --[[ if (tree.) ]]
    vim.keymap.set("n", "<leader>f", ":ExC")
  end
}
