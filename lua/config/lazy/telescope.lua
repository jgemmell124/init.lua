return {
	"nvim-telescope/telescope.nvim",

	tag = "v0.1.8",

	dependencies = {
		"nvim-lua/plenary.nvim"
	},

	config = function ()
		require("telescope").setup({
			pickers = {
				lsp_references = {
					theme = 'dropdown'
				},
				live_grep = {
					theme = 'dropdown'
				},
				lsp_docuemnt_symbols = {
					theme = 'dropdown'
				},
			},
		})

		local builtin = require('telescope.builtin')

		-- Search recent buffers 
		local function bsearch()
			builtin.buffers({
				sort_lastused=true,
				ignore_current_buffer=true,
				path_display = { 'short' },
			})
		end

		-- find in files
		vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
		vim.keymap.set('n', '<C-p>', builtin.git_files, {})
		vim.keymap.set('n', '<leader>pg', builtin.live_grep, {})
		vim.keymap.set('n', '<leader>pr', builtin.resume, {})
		vim.keymap.set('n', '<leader>pv', builtin.lsp_document_symbols, {})
		vim.keymap.set('n', '<leader>vrr', builtin.lsp_references, {})
		vim.keymap.set('n', '<leader>pb', bsearch, {})
		vim.keymap.set('n', '<leader>pc', builtin.grep_string, {}) -- grep string under cursor
		vim.keymap.set('n', '<leader>ps', function()
			builtin.grep_string({ search = vim.fn.input("Grep String > ") });
		end)

		if vim.g.colors_name == 'gruvbox' then
			-- there is none for gruvbox so add our own
			vim.api.nvim_set_hl(0, 'TelescopeSelection', { link = 'IlluminatedWordText' })
			vim.api.nvim_set_hl(0, 'TelescopeMatching', { link = 'GruvboxAqua' })
		end

	end
}
