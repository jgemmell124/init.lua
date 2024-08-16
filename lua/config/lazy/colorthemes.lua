function SetColorTheme(theme)
	local curTheme = theme or "gruvbox_material"
	local themes = {
		gruvbox = "gruvbox",
		gruvbox_material = "gruvbox-material",
		gruvbox_baby = "gruvbox-baby",
		onedark = "onedark",
		rose_pine = "rose-pine"
	}
	if themes[curTheme] then
		vim.cmd("colorscheme " .. themes[curTheme])
	else
		print("Theme not found")
	end
end

return {
	{
		"ellisonleao/gruvbox.nvim",

		config = function ()
			require("gruvbox").setup({
				terminal_colors = true, -- add neovim terminal colors
				undercurl = true,
				underline = true,
				bold = false,
				italic = {
					strings = true,
					emphasis = true,
					comments = true,
					operators = false,
					folds = true,
				},
				strikethrough = true,
				invert_selection = false,
				invert_signs = false,
				invert_tabline = false,
				invert_intend_guides = false,
				inverse = false, -- invert background for search, diffs, statuslines and errors
				contrast = 'soft', -- can be "hard", "soft" or empty string
				dim_inactive = false,
				transparent_mode = true, -- transparent shows terminal back
				palette_overrides = {
					dark2 = "#2b2b2b",
				},
				overrides = {
					--[[ Constant = {link="GruvboxPurpleBold"}, ]]
					--[[ StorageClass = {fg = "#98A254", bold=true}, ]]
					--[[ Type = {link="GruvboxYellow"}, ]]
					--[[ Identifier = {link="GruvboxBlue"}, ]]
					--[[ ["@parameter"] = {link = "GruvboxYellow"}, ]]
					--[[ ["@variable.builtin"] = { link="GruvboxYellowBold" }, ]]
					--[[ ["@constant.builtin"] = { link="GruvboxWhiteBold" }, ]]
					--[[ ["@text.uri"] = {}, ]]
					-- JAVASCRIPT / REACT / javascript
					['@tag.javascript'] = { link = 'GruvboxAqua' },
					['@tag.attribute.javascript'] = { link = 'GruvboxYellow' },
					['@tag.delimiter.javascript'] = { link = 'GruvboxGray' },
					['@keyword.javascript'] = { link = 'GruvboxOrange' },
					['@constructor.javascript'] = { link = 'GruvboxAqua' },
					['@punctuation.bracket.javascript'] = { link = 'GruvboxBlue' },

					['@method'] = { link = 'GruvboxAquaBold' },
					['@method.call'] = { link = 'GruvboxAquaBold' },
					['@function'] = { link = 'GruvboxAquaBold' },
					['@function.call'] = { link = 'GruvboxAquaBold' },
					--[[ htmlArg = {link="GruvboxRed"}, ]]
					--[[ Conditional = { link = "GruvboxRedBold" }, ]]
					--[[ Statement = { link = "GruvboxRedBold" }, ]]
					--[[ Repeat = { link = "GruvboxRedBold" }, ]]
					--[[ Label = { link = "GruvboxRedBold" }, ]]
					--[[ Keyword = { link = "GruvboxRedBold" }, ]]
					--[[ Tag = { link = "GruvboxRedBold" }, ]]
					--[[ Special = { link = "GruvboxOrangeBold" }, ]]
				}
			})
			vim.g.gruvbox_italic=1
			vim.o.background = 'dark'
		end
	},

	{
		"sainnhe/gruvbox-material",

		lazy = false,

        priority = 999,

		config = function ()

			vim.g.gruvbox_material_better_performance = 1
			-- Fonts
            vim.g.gruvbox_material_enable_italic = 1
			--[[ vim.g.gruvbox_material_disable_italic_comment = 0 ]]
            vim.g.gruvbox_material_enable_bold = 0
            vim.g.gruvbox_material_transparent_background = 0
			-- Themes
			vim.g.gruvbox_material_foreground = 'original' -- original, mix, material
			vim.g.gruvbox_material_background = 'medium' -- hard soft medium,
			vim.g.gruvbox_material_ui_contrast = 'high' -- The contrast of line numbers, indent lines, etc.
			vim.g.gruvbox_material_float_style = 'dim'  -- Background of floating windows 'bright/dim'
			-- others
			vim.g.gruvbox_material_diagnostic_line_highlight = 1
			vim.g.gruvbox_material_diagnostic_virtual_text = 'colored'
            vim.g.gruvbox_material_inlay_hints_background = 'dimmed'
            vim.g.gruvbox_material_menu_selection_background = 'blue'
            SetColorTheme()

		end
	},

	{
		"luisiacc/gruvbox-baby",

		config = function ()
			vim.g.gruvbox_baby_transparent_mode = 0
			vim.g.gruvbox_baby_function_style = "NONE"
			vim.g.gruvbox_baby_keyword_style = "italic"
		end
	},

	{
		"navarasu/onedark.nvim",

		config = function ()
			require('onedark').setup  {
				-- Main options --
				style = 'warmer', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
				transparent = true,  -- Show/hide background
				term_colors = true, -- Change terminal color as per the selected theme style
				ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
				cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

				-- toggle theme style ---
				toggle_style_key = '<leader>q', -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
				toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- List of styles to toggle between
				-- Change code style ---
				-- Options are italic, bold, underline, none
				-- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
				code_style = {
					comments = 'italic',
					keywords = 'bold',
					functions = 'none',
					strings = 'italic',
					variables = 'none'
				},

				-- Lualine options --
				lualine = {
					transparent = false, -- lualine center bar transparency
				},

				-- Custom Highlights --
				colors = {}, -- Override default colors
				highlights = {
					["@conditional"] = {fmt = 'italic'},
					["@keyword."] = {fmt = 'italic'},
					["@constant"] = {fmt = 'italic'},
					["@type.builtin"] = {fg = '#98C1D9', fmt = 'italic'},
				}, -- Override highlight groups

				-- Plugins Config --
				diagnostics = {
					darker = true, -- darker colors for diagnostic
					undercurl = true,   -- use undercurl instead of underline for diagnostics
					background = true,    -- use background color for virtual text
				},
			}
		end
	},

	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require("rose-pine").setup({
				disable_background = false,
				styles = {
					italic = false
				}
			})
		end

	},
	--[[ { ]]
	--[[ 	"lunarvim/darkplus.nvim", ]]
	--[[ 	config = function() ]]
	--[[ 		require("darkplus").setup() ]]
	--[[ 	end ]]
	--[[ } ]]

}
