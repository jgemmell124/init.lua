return {
	"tpope/vim-fugitive",

	-- TODO: add more key maps
	config = function()
		vim.keymap.set("n", "<leader>g", vim.cmd.Git)
		vim.keymap.set("n", "<leader>b", ":Git blame<CR>")
	end
}
