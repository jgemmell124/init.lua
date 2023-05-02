-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- autopair brackets, quotes, etc
    use 'windwp/nvim-autopairs'

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '1.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Tree Sitter
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use ('p00f/nvim-ts-rainbow') 

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
    -- Nightfox
    use "EdenEast/nightfox.nvim"

    -- Nvim Tree
    use { "nvim-tree/nvim-tree.lua", 
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
        config = function()
            require("nvim-tree").setup {}
        end
    }

end)

