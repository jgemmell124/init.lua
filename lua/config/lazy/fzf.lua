return {
  "ibhagwan/fzf-lua",

  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },

  enabled = false,
  config = function ()
    local fzf = require("fzf-lua")
    fzf.setup({
      "borderless_full", -- profile "telescope", "default", "borderless_full"
      winopts = {
        preview = {
          -- default     = 'bat',           -- override the default previewer?
          -- default uses the 'builtin' previewer
          border         = 'border',        -- border|noborder, applies only to
          -- native fzf previewers (bat/cat/git/etc)
          wrap           = 'nowrap',        -- wrap|nowrap
          hidden         = 'nohidden',      -- hidden|nohidden
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
        winopts = {
          preview = {
            hidden = "hidden",
            layout = "vertical",
            vertical       = 'down:10%',      -- up|down:size
            horizontal     = 'right:50%',     -- right|left:size
          },
          backdrop  = 60,
          width     = 0.40,            -- window width
          row       = 0.10,            -- window row position (0=top, 1=bottom)
          col       = 0.50,            -- window col position (0=left, 1=right)
        },
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
    vim.keymap.set("n", "<leader>pz", vim.cmd.Fzf, {})
    vim.keymap.set("n", "<leader>pd", function ()
      local opts = {}
      opts.prompt = "Directories> "
      opts.winopts = {
        width     = 0.40,            -- window width
        row       = 0.10,            -- window row position (0=top, 1=bottom)
        col       = 0.50,            -- window col position (0=left, 1=right)
      }
      opts.fn_transform = function(x)
        return fzf.utils.ansi_codes.magenta(x)
      end
      opts.actions = {
        ['default'] = function(selected)
          vim.cmd("e" .. selected[1])
        end
      }
      --[[ fzf.fzf_exec("fdfind --type d", opts) ]]
      fzf.fzf_exec("find . -type d -not -path **/.git/*", opts)
    end, {})

  end -- config
}
