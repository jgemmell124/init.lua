-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself

	use 'HiPhish/nvim-ts-rainbow2'

	-- Show diagnostics
	use 'folke/trouble.nvim'

    -- Line Indents
    use 'lukas-reineke/indent-blankline.nvim'
    -- Git signs
    use 'lewis6991/gitsigns.nvim'
	use 'github/copilot.vim'


end)
