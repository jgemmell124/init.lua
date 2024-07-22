return {
	"nvim-treesitter/nvim-treesitter",

	build = ":TSUpdate",

	config = function ()
		require("nvim-treesitter.config").setup({

			-- A list of parser names, or "all" (the five listed parsers should always be installed)
			ensure_installed = {
				"python",
				"javascript",
				"c",
				"lua",
				"vim",
				"vimdoc",
				"query"
			},

			-- Install parsers synchronously (only applied to `ensure_installed`)
			sync_install = false,

			-- Automatically install missing parsers when entering buffer
			-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
			auto_install = true,

			indent = {
				enable = true,
				disable = { "yaml" }
			},

			---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
			-- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

			highlight = {
				-- `false` will disable the whole extension
				enable = true,

				-- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
				-- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
				-- the name of the parser)
				-- list of language that will be disabled
				--- disable = {},

				-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
				-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
				-- Using this option may slow down your editor, and you may see some duplicate highlights.
				-- Instead of true it can also be a list of languages
				additional_vim_regex_highlighting = {
					"markdown",
				},
			},

			-- comment strings
			--[[ context_commentstring = { ]]
			--[[ }, ]]
			--[[]]
			--[[ autotag = { ]]
			--[[ 	enable = true ]]
			--[[ }, ]]
			--[[]]
			--[[ playground = { ]]
			--[[ 	enable = true, ]]
			--[[ 	disable = {}, ]]
			--[[ 	updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code ]]
			--[[ 	persist_queries = false, -- Whether the query persists across vim sessions ]]
			--[[ 	keybindings = { ]]
			--[[ 		toggle_query_editor = 'o', ]]
			--[[ 		toggle_hl_groups = 'i', ]]
			--[[ 		toggle_injected_languages = 't', ]]
			--[[ 		toggle_anonymous_nodes = 'a', ]]
			--[[ 		toggle_language_display = 'I', ]]
			--[[ 		focus_language = 'f', ]]
			--[[ 		unfocus_language = 'F', ]]
			--[[ 		update = 'R', ]]
			--[[ 		goto_node = '<cr>', ]]
			--[[ 		show_help = '?', ]]
			--[[ 	}, ]]
			--[[ }, ]]
			--[[ rainbow = { ]]
			--[[ 	enable = true, ]]
			--[[ 	-- list of languages you want to disable the plugin for ]]
			--[[ 	disable = { 'jsx', 'cpp' }, ]]
			--[[ 	-- Which query to use for finding delimiters ]]
			--[[ 	query = 'rainbow-parens', ]]
			--[[ 	-- Highlight the entire buffer all at once ]]
			--[[ 	strategy = require('ts-rainbow').strategy.global, ]]
			--[[ } ]]

		})

	end


}
