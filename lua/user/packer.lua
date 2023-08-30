-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Telescope for file searching 
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '1.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- LSP (Lsp Zero)
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
            'williamboman/mason.nvim',
            run = function()
                pcall(vim.cmd, 'MasonUpdate')
            end,
            },
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
			{'hrsh7th/cmp-nvim-lsp'}, -- Required
			{'L3MON4D3/LuaSnip'},     -- Required
        }
    }

    -- Tree Sitter
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use 'nvim-treesitter/playground'

    -- autopair brackets, quotes, etc
    use 'windwp/nvim-autopairs'

	-- Show diagnostics
	use 'folke/trouble.nvim'

	-- Git plugin
	use 'tpope/vim-fugitive'

    -- commenting lines
    use 'numToStr/Comment.nvim' -- Easily Comment stuff
    use 'JoosepAlviste/nvim-ts-context-commentstring' -- treessitter context

    -- Highlighting
    use 'rrethy/vim-illuminate'

    -- Line Indents
    use 'lukas-reineke/indent-blankline.nvim'

    -- Git signs
    use 'lewis6991/gitsigns.nvim'

	-- Manage closing buffers 
	use 'moll/vim-bbye'

    -- Buffer, tabs, windows
    use {
        'akinsho/bufferline.nvim',
        tag = "*",
        requires = 'nvim-tree/nvim-web-devicons'
    }

	-- todo comments that are highlighted
	use 'folke/todo-comments.nvim'

    -- Lua Line 
    use({
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    })

    -- Harpoon
    use 'ThePrimeagen/harpoon'

    -- COLOR THEMES --
    -- Color theme (Gruv box)
    use 'ellisonleao/gruvbox.nvim'
    use 'navarasu/onedark.nvim'
    use 'marko-cerovac/material.nvim'
	-- the best vscode theme 
	use 'lunarvim/darkplus.nvim'

end)
