vim.opt.termguicolors = true
local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
    return
end

bufferline.setup {
    options = {
        left_mouse_command = "buffer %d", -- can be a string | function, see "Mouse actions"
        middle_mouse_command = nil, -- can be a string | function, see "Mouse actions"
        indicator_icon = "▎",
        buffer_close_icon = '',
        modified_icon = "●",
        close_icon = "",
        left_trunc_marker = "",
        right_trunc_marker = "",
        max_name_length = 30,
        max_prefix_length = 30, -- prefix used when a buffer is de-duplicated
        tab_size = 21,
        diagnostics = false, -- | "nvim_lsp" | "coc",
        diagnostics_update_in_insert = false,
        offsets = { { filetype = "NvimTree", text = "File Explorer", padding = 1 } },
        show_buffer_icons = true,
        show_buffer_close_icons = true,
        show_close_icon = true,
        show_tab_indicators = true,
        persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
-- can also be a table containing 2 custom separators
        -- [focused and unfocused]. eg: { '|', '|' }
        separator_style = "thin", -- | "thick" | "thin" | { 'any', 'any' },
        enforce_regular_tabs = false,
        always_show_bufferline = true,
-- sort_by = 'id' | 'extension' | 'relative_directory' | 'directory' | 'tabs' | function(buffer_a, buffer_b)
        --   -- add custom logic
        --   return buffer_a.modified > buffer_b.modified
        -- end
    },
	--[[ highlights = {
        fill = {
            guifg = { attribute = "fg", highlight = "TabLine" },
            guibg = { attribute = "bg", highlight = "TabLine" },
        },
        background = {
			guibg = { attribute = "bg", highlight = "TabLine" },
            guifg = { attribute = "fg", highlight = "TabLine" },
        },

        -- buffer_selected = {
        --   guifg = {attribute='fg',highlight='#ff0000'},
        --   guibg = {attribute='bg',highlight='#0000ff'},
        --   gui = 'none'
        --   },
        buffer_visible = {
            guifg = { attribute = "fg", highlight = "TabLine" },
            guibg = { attribute = "bg", highlight = "TabLine" },
        },

        close_button = {
            guifg = { attribute = "fg", highlight = "TabLine" },
            guibg = { attribute = "bg", highlight = "TabLine" },
        },
        close_button_visible = {
            guifg = { attribute = "fg", highlight = "TabLine" },
            guibg = { attribute = "bg", highlight = "TabLine" },
        },
        -- close_button_selected = {
        --   guifg = {attribute='fg',highlight='TabLineSel'},
        --   guibg ={attribute='bg',highlight='TabLineSel'}
        --   },

        tab_selected = {
            guifg = { attribute = "fg", highlight = "Normal" },
            guibg = { attribute = "bg", highlight = "Normal" },
        },
        tab = {
            guifg = { attribute = "fg", highlight = "TabLine" },
        guibg = { attribute = "bg", highlight = "TabLine" },
        },
        tab_close = {
            -- guifg = {attribute='fg',highlight='LspDiagnosticsDefaultError'},
            guifg = { attribute = "fg", highlight = "TabLineSel" },
            guibg = { attribute = "bg", highlight = "Normal" },
        },

        duplicate_selected = {
            guifg = { attribute = "fg", highlight = "TabLineSel" },
            guibg = { attribute = "bg", highlight = "TabLineSel" },
            gui = "italic",
        },
        duplicate_visible = {
            guifg = { attribute = "fg", highlight = "TabLine" },
            guibg = { attribute = "bg", highlight = "TabLine" },
            gui = "italic",
        },
        duplicate = {
            guifg = { attribute = "fg", highlight = "TabLine" },
            guibg = { attribute = "bg", highlight = "TabLine" },
            gui = "italic",
        },

        modified = {
            guifg = { attribute = "fg", highlight = "TabLine" },
            guibg = { attribute = "bg", highlight = "TabLine" },
        },
        modified_selected = {
            guifg = { attribute = "fg", highlight = "Normal" },
            guibg = { attribute = "bg", highlight = "Normal" },
        },
        modified_visible = {
            guifg = { attribute = "fg", highlight = "TabLine" },
            guibg = { attribute = "bg", highlight = "TabLine" },
        },

        separator = {
            guifg = { attribute = "bg", highlight = "TabLine" },
            guibg = { attribute = "bg", highlight = "TabLine" },
        },
        separator_selected = {
            guifg = { attribute = "bg", highlight = "Normal" },
            guibg = { attribute = "bg", highlight = "Normal" },
        },
        -- separator_visible = {
        --   guifg = {attribute='bg',highlight='TabLine'},
        --   guibg = {attribute='bg',highlight='TabLine'}
        --   },
        indicator_selected = {
            guifg = { attribute = "fg", highlight = "LspDiagnosticsDefaultHint" },
            guibg = { attribute = "bg", highlight = "Normal" },
        },
    }, ]]
}

