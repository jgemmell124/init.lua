-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- autopair brackets, quotes, etc
    use 'windwp/nvim-autopairs'
    -- commenting lines
    use 'numToStr/Comment.nvim' -- Easily Comment stuff
    use 'JoosepAlviste/nvim-ts-context-commentstring' -- treessitter context

    -- Highlighting
    use 'rrethy/vim-illuminate'

    -- Line Indents
    use 'lukas-reineke/indent-blankline.nvim'

    -- Git signs
    use 'lewis6991/gitsigns.nvim'

    -- Buffer, tabs, windows
    use {
        'akinsho/bufferline.nvim',
        tag = "*",
        requires = 'nvim-tree/nvim-web-devicons'
    }

    -- toggle terminal
    use 'akinsho/toggleterm.nvim'

    -- Lua Line 
    use({
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    })

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '1.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Tree Sitter
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('HiPhish/nvim-ts-rainbow2')
    use("nvim-treesitter/nvim-treesitter-context");

    -- Harpoon
    use 'ThePrimeagen/harpoon'

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

    -- COLOR THEMES --
    -- Color theme (Gruv box)
    use "ellisonleao/gruvbox.nvim"
    -- Using Packer
    use 'navarasu/onedark.nvim'
    -- Nightfox
    use "EdenEast/nightfox.nvim" -- Packer
    use 'marko-cerovac/material.nvim'
    -- vscode theme
    use "tomasiser/vim-code-dark"
    use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
    })

    -- Nvim Tree
    use { "nvim-tree/nvim-tree.lua",
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
            'kyazdani42/nvim-web-devicons'
        },
        config = function()
            require("nvim-tree").setup {}
        end
    }
end)


