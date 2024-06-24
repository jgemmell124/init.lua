
--------------------------------------------
-- gruvbox
local function enableGruvbox()
	-- Default options:
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
		inverse = true, -- invert background for search, diffs, statuslines and errors
		contrast = 'hard', -- can be "hard", "soft" or empty string
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
	vim.cmd("colorscheme gruvbox")
end
--------------------------------------------
-- grubox material 
local function enableGruvboxMaterial()
	vim.g.gruvbox_material_better_performance = 1
	-- Fonts
	vim.g.gruvbox_material_disable_italic_comment = 1
	vim.g.gruvbox_material_enable_italic = 0
	vim.g.gruvbox_material_enable_bold = 0
	vim.g.gruvbox_material_transparent_background = 1
	-- Themes
	vim.g.gruvbox_material_foreground = 'original' -- original, mix, material
	vim.g.gruvbox_material_background = 'hard'
	vim.g.gruvbox_material_ui_contrast = 'high' -- The contrast of line numbers, indent lines, etc.
	vim.g.gruvbox_material_float_style = 'dim'  -- Background of floating windows
	vim.cmd("colorscheme gruvbox-material")
end
--[[ enableGruvboxMaterial(); ]]
--------------------------------------------
local function enableGruvboxBaby()
	-- gruvbox baby
	vim.g.gruvbox_baby_transparent_mode = 0
	vim.g.gruvbox_baby_function_style = "NONE"
	vim.g.gruvbox_baby_keyword_style = "italic"
	--[[ vim.g.gruvbox_baby_highlights = {Normal = {fg = "#123123", bg = "NONE", style="underline"}} ]]
	--[[ vim.g.gruvbox_baby_telescope_theme = 1 ]]
	--[[ vim.g.gruvbox_baby_use_original_palette = 1 ]]
	-- Load the colorscheme
	vim.cmd('colorscheme gruvbox-baby')
end
--[[ enableGruvboxBaby(); ]]
--------------------------------------------

--------------------------------------------
local function enableOneDark()
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
	require('onedark').load()
end
--[[ enableOneDark(); ]]

---------------------------------- 
local function enableDarkPlus()
	vim.cmd("colorscheme darkplus")
end
---------------------------------- 
local function enableRosePine()
	require('rose-pine').setup({
		--- @usage 'auto'|'main'|'moon'|'dawn'
		variant = 'moon',
		--- @usage 'main'|'moon'|'dawn'
		dark_variant = 'moon',
		bold_vert_split = false,
		dim_nc_background = false,
		disable_background = false,
		disable_float_background = false,
		disable_italics = false,

		--- @usage string hex value or named color from rosepinetheme.com/palette
		groups = {
			background = 'base',
			background_nc = '_experimental_nc',
			panel = 'surface',
			panel_nc = 'base',
			border = 'highlight_med',
			comment = 'muted',
			link = 'iris',
			punctuation = 'subtle',

			error = 'love',
			hint = 'iris',
			info = 'foam',
			warn = 'gold',

			headings = {
				h1 = 'iris',
				h2 = 'foam',
				h3 = 'rose',
				h4 = 'gold',
				h5 = 'pine',
				h6 = 'foam',
			}
			-- or set all headings at once
			-- headings = 'subtle'
		},

		-- Change specific vim highlight groups
		-- https://github.com/rose-pine/neovim/wiki/Recipes
		highlight_groups = {
			ColorColumn = { bg = 'rose' },

			-- Blend colours against the "base" background
			CursorLine = { bg = 'foam', blend = 10 },
			StatusLine = { fg = 'love', bg = 'love', blend = 10 },

			-- By default each group adds to the existing config.
			-- If you only want to set what is written in this config exactly,
			-- you can set the inherit option:
			Search = { bg = 'gold', inherit = false },
		}
	})

	-- Set colorscheme after options
	vim.cmd('colorscheme rose-pine')
end
-------------------------------------

-- these two are probably the best
--[[ enableDarkPlus(); ]]
--[[ enableRosePine(); ]]

--[[ enableGruvbox(); ]]

enableGruvboxMaterial();
--[[ enableGruvboxBaby(); ]]
--[[ vim.o.background = 'dark' ]]
--[[ vim.cmd('colorscheme gruvbox') ]]



-- Remove background in sign column
--[[ local hl = vim.api.nvim_set_hl ]]
--[[ hl(0, "SignColumn", { bg = 'NONE' }) ]]
-- Gitsigns
--[[ hl(0, "GitGutterAdd", { bg = 'NONE' }) ]]
--[[ hl(0, "GitGutterChange", { bg = 'NONE' }) ]]
--[[ hl(0, "GitGutterDelete", { bg = 'NONE' }) ]]
--[[ hl(0, "GitGutterChangeDelete", { bg = 'NONE' }) ]]
--[[ -- LSP ]]
--[[ hl(0, "DiagnosticError", { bg = 'NONE' }) ]]
--[[ hl(0, "DiagnosticSignError", { bg = 'NONE' }) ]]
--[[ hl(0, "DiagnosticSignHint", { bg = 'NONE' }) ]]
--[[ hl(0, "DiagnosticSignInfo", { bg = 'NONE' }) ]]
--[[ hl(0, "DiagnosticSignWarn", { bg = 'NONE' }) ]]
