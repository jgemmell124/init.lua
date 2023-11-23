--let g:gruvbox_italic=1
vim.g.gruvbox_italic=1


--------------------------------------------
-- gruvbox
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
  contrast = "", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = false,
})
vim.cmd("colorscheme gruvbox")

--------------------------------------------
-- grubox material 
vim.g.gruvbox_material_foreground = 'original'
vim.g.gruvbox_material_background = 'soft'
--[[ vim.cmd("colorscheme gruvbox-material") ]]
--------------------------------------------

-- gruvbox baby
vim.g.gruvbox_baby_transparent_mode = 1
--[[ vim.g.gruvbox_baby_function_style = "bold" ]]
--[[ vim.g.gruvbox_baby_keyword_style = "italic" ]]
--[[ vim.g.gruvbox_baby_highlights = {Normal = {fg = "#123123", bg = "NONE", style="underline"}} ]]
--[[ vim.g.gruvbox_baby_telescope_theme = 1 ]]
vim.g.gruvbox_baby_use_original_palette = 1
-- Load the colorscheme
--[[ vim.cmd('colorscheme gruvbox-baby') ]]
--------------------------------------------

-- Lua:
-- For dark theme (neovim's default)
--[[ vim.o.background = 'dark' ]]
-- For light theme
--[[ vim.o.background = 'light' ]]
--
--Lua:
--[[ vim.g.material_style = "darker" ]]

--------------------------------------------
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

--[[ vim.cmd("colorscheme darkplus") ]]

---------------------------------- 
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
--[[ vim.cmd('colorscheme rose-pine') ]]

-- don't remember what this is for
--[[ vim.api.nvim_set_hl(0, "Normal", { bg = "none" }) ]]
--[[ vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" }) ]]

-- Only Load one theme 
--[[ require('onedark').load() ]]
--[[ require('vscode').load() ]]
-- best vim theme
