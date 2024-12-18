return {
  "ibhagwan/fzf-lua",

  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },

  config = function ()
    local fzf = require("fzf-lua")
    fzf.setup({
      "default", -- profile "telescope", "default", ""
      winopts = {
        preview = {
          -- default     = 'bat',           -- override the default previewer?
          -- default uses the 'builtin' previewer
          border         = 'border',        -- border|noborder, applies only to
          -- native fzf previewers (bat/cat/git/etc)
          wrap           = 'nowrap',        -- wrap|nowrap
          hidden         = 'hidden',      -- hidden|nohidden
          vertical       = 'down:45%',      -- up|down:size
          horizontal     = 'right:60%',     -- right|left:size
          layout         = 'vertical',          -- horizontal|vertical|flex
          flip_columns   = 100,             -- #cols to switch to horizontal on flex
          -- Only used with the builtin previewer:
          title          = true,            -- preview border title (file/buf)?
          title_pos      = "center",        -- left|center|right, title alignment
          scrollbar      = 'float',         -- `false` or string:'float|border'
          -- float:  in-window floating border
          -- border: in-border "block" marker
          scrolloff      = '-2',            -- float scrollbar offset from right
          -- applies only when scrollbar = 'float'
          delay          = 100,             -- delay(ms) displaying the preview
          -- prevents lag on fast scrolling
        }
      },
      builtin = {
        disable = { "netrw" }
      },
      files = {
        formatter = "path.filename_first",
        git_icons = true,
        prompt = "Files ❯ ",
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
    vim.keymap.set("n", "<leader>vrr", fzf.lsp_references, {})
    vim.keymap.set('n', '<leader>pv', fzf.lsp_document_symbols, {})
    vim.keymap.set("n", "<leader>pz", vim.cmd.Fzf, {})
    vim.keymap.set("n", "<C-p>", fzf.git_files, {})
  end
}
