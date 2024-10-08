return {
	"nvim-lualine/lualine.nvim",

	dependencies = {
		"nvim-tree/nvim-web-devicons"
	},

	config = function ()
		require('lualine').setup({
			options = {
				icons_enabled = true,
				--[[ theme = 'gruvbox', ]]
				--[[ component_separators = { left = '', right = ''}, ]]
				--[[ section_separators = { left = '', right = ''}, ]]
				component_separators = {right = '|'},
				section_separators = {},
				ignore_focus = {'NvimTree'},
				disabled_filetypes = {
					statusline = {'NvimTree'},
					winbar = {'NvimTree'},
				},
				always_divide_middle = true,
				globalstatus = false,
				refresh = {
					statusline = 1000,
					tabline = 1000,
					winbar = 1000,
				}
			},
			sections = {
				lualine_a = {'mode'},
				lualine_b = {'branch', 'diff', 'diagnostics'},
				--[[ lualine_c = {{'filename', path=1}}, ]]
				lualine_x = {'encoding', 'fileformat', 'filetype'},
				lualine_y = {'progress'},
				lualine_z = {'location', 'searchcount'}
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = {{'filename', path=1}}, -- full relative path
				lualine_x = {'location'},
				lualine_y = {},
				lualine_z = {}
			},
			tabline = {},
			winbar = {
				-- show name at top of file
				lualine_b = {'filename'},
			},
			inactive_winbar = {
				-- show name at top of file
				lualine_b = {'filename'},
			},
			extensions = {}
		})
	end
}
