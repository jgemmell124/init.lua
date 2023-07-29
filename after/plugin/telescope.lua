local builtin = require('telescope.builtin')


-- Search recent buffers 
local function bsearch()
	builtin.buffers({
		sort_lastused=true,
		ignore_current_buffer=true,
		path_display = { 'short' },
		file_ignore_patterns = { '' }
	})
end

-- find in files
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>pg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>pr', builtin.resume, {})
vim.keymap.set('n', '<leader>pb', bsearch, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
