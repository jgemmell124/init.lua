vim.opt.termguicolors = true
local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
	return
end
local palette = {}

if vim.g.colors_name == 'gruvbox' then
	local colors = require('gruvbox').palette
	palette = {
		text = colors.fg1,
		dim = colors.dark0,
		red = colors.neutral_red,
		yellow = colors.neutral_yellow,
		green = colors.neutral_green,
		purple = colors.neutral_purple,
		blue = colors.neutral_blue,
	}
else
	palette = {
		text = '#ffffff',
		dim = '#4a4a4a',
		red = '#ff0000',
		yellow = '#ffff00',
		green = '#00ff00',
		purple = '#4a4a4a',
		blue = '#0ff0ff'
	}

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
		show_buffer_close_icons = false,
		show_close_icon = true,
		show_tab_indicators = true,
		persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
		-- can also be a table containing 2 custom separators
		-- [focused and unfocused]. eg: { '|', '|' }
		separator_style = "thin", -- | "thick" | "thin" | { 'any', 'any' },
		enforce_regular_tabs = true,
		always_show_bufferline = true,
		-- sort_by = 'id' | 'extension' | 'relative_directory' | 'directory' | 'tabs' | function(buffer_a, buffer_b)
		--   -- add custom logic
		--   return buffer_a.modified > buffer_b.modified
		-- end
	},
	highlights = {
          tab = {
            bg = 'none',
            fg = palette.text,
          },
          tab_selected = {
            bg = 'none',
            fg = palette.text,
          },
          buffer_visible = {
            bg = 'none',
            fg = palette.dim,
          },
          buffer_selected = {
            bg = 'none',
            fg = palette.text,
            bold = false,
          },
          separator = {
            bg = 'none',
            fg = palette.text,
          },
          numbers = {
            fg = palette.text,
          },
          numbers_visible = {
            fg = palette.dim,
          },
          background = {
            fg = palette.dim,
          },
          hint = {
            fg = palette.dim,
          },
          hint_visible = {
            fg = palette.dim,
          },
          hint_selected = {
            fg = palette.text,
          },
          hint_diagnostic = {
            fg = palette.purple,
          },
          hint_diagnostic_visible = {
            fg = palette.purple,
          },
          hint_diagnostic_selected = {
            fg = palette.purple,
          },
          error = {
            fg = palette.dim,
          },
          error_visible = {
            fg = palette.dim,
          },
          error_selected = {
            fg = palette.text,
          },
          error_diagnostic = {
            fg = palette.red,
          },
          error_diagnostic_visible = {
            fg = palette.red,
          },
          error_diagnostic_selected = {
            fg = palette.red,
          },
          warning = {
            fg = palette.dim,
          },
          warning_visible = {
            fg = palette.dim,
          },
          warning_selected = {
            fg = palette.text,
          },
          warning_diagnostic = {
            fg = palette.yellow,
          },
          warning_diagnostic_visible = {
            fg = palette.yellow,
          },
          warning_diagnostic_selected = {
            fg = palette.yellow,
          },
          info = {
            fg = palette.dim,
          },
          info_visible = {
            fg = palette.dim,
          },
          info_selected = {
            fg = palette.text,
          },
          info_diagnostic = {
            fg = palette.blue,
          },
          info_diagnostic_visible = {
            fg = palette.blue,
          },
          info_diagnostic_selected = {
            fg = palette.blue,
          },
        }
}
