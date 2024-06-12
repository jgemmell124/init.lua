local lsp = require("lsp-zero")


lsp.preset({
    float_border = 'rounded',
    call_servers = 'local',
    configure_diagnostics = true,
    setup_servers_on_start = true,
    set_lsp_keymaps = {
        preserve_mappings = false,
        omit = {},
    },
})

local servers = {
    'tsserver',
    'rust_analyzer',
    'lua_ls',
    'pyright',
    'clangd',
}

lsp.ensure_installed(servers)

require'lspconfig'.lua_ls.setup {
    -- ... other configs
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        },
		inlay_hints = {
			enable = true,
		}
    }
}


require'lspconfig'.clangd.setup {
  cmd = {
    "clangd",
    "--offset-encoding=utf-16",
  },
}

lsp.set_preferences({
    suggest_lsp_servers = true,
})

lsp.set_sign_icons({
    error = '✘',
    warn = '▲',
    hint = '⚑',
    info = '»'
})


lsp.on_attach(function(client, bufnr)
    local opts = {buffer = bufnr, remap = false}
    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>rr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

lsp.setup()
vim.diagnostic.config({
    virtual_text = true
})

--- CMP SETUP --- 
-- custom ghost highlight group
vim.api.nvim_set_hl(0, 'GhostAUTOCMP', { italic=true, fg='#676767' }) --- cmp icon settings --- 

local kind_icons = {
    Text = "󰀬",
    Method = "",
    Function = "󰊕",
    Constructor = "",
    Field = "",
    Variable = "",
    Class = "",
    Interface = "",
    Module = "󰅩",
    Property = "",
    Unit = "",
    Value = "󰎠",
    Enum = "",
    Keyword = "󰌋",
    Snippet = "",
    Color = "",
    File = "",
    Reference = "",
    Folder = "",
    EnumMember = "",
    Constant = "",
    Struct = "",
    Event = "",
    Operator = "",
    TypeParameter = "",
}

-- find more here: https://www.nerdfonts.com/cheat-sheet
local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
cmp.setup({
    mapping = cmp.mapping.preset.insert({
         ['<Tab>'] = function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            else
              fallback()
            end
          end,
          ['<S-Tab>'] = function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            else
              fallback()
            end
          end,
		['<CR>'] = cmp.mapping.confirm({ select = true }),
        ['<C-Space>'] = cmp.mapping.complete(),
		['<C-e>'] = cmp.mapping.abort(),
    }),
    formatting = {
        fields = {"abbr", "kind", "menu",},
        --[[ fields = {"kind", "abbr", "menu"}, ]]
        format = function(entry, vim_item)
            local lspkind_ok, lspkind  = pcall(require, "lspkind")
            if not lspkind_ok then
                vim_item.kind = string.format('%s %s',
                                                kind_icons[vim_item.kind],
                                                vim_item.kind)
                --[[ vim_item.kind = string.format('%s', kind_icons[vim_item.kind]) ]]
                vim_item.menu = ({
                    nvim_lsp = "[LSP]",
                    luasnip = "[Snip]",
                    buffer = "[BUFF]",
                    path = "[PATH]",
                })[entry.source.name]

                return vim_item
            else
                return lspkind.cmp_format()
            end
        end,
    },
    window = {
        documentation = {
            border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
        },
    },

    experimental = {
        ghost_text = { hl_group = "GhostAUTOCMP" },
    },
})

if vim.g.colors_name == 'gruvbox' then
	-- change kinds TODO: these are wrong, don't match up with the actual color
	vim.cmd [[highlight! link CmpItemAbbrMatchFuzzy GruvboxAquaAqua]]
	vim.cmd [[highlight! link CmpItemKindText GruxboxFg]]
	vim.cmd [[highlight! link CmpItemKindMethod GruvboxPurple]]
	vim.cmd [[highlight! link CmpItemKindFunction GruvboxPurple]]
	vim.cmd [[highlight! link CmpItemKindConstructor GruvboxGreen]]
	vim.cmd [[highlight! link CmpItemKindField GruvboxAqua]]
	vim.cmd [[highlight! link CmpItemKindVariable GruvboxBlue]]
	vim.cmd [[highlight! link CmpItemKindClass GruvboxGreen]]
	vim.cmd [[highlight! link CmpItemKindInterface GruvboxGreen]]
	vim.cmd [[highlight! link CmpItemKindValue GruvboxOrange]]
	vim.cmd [[highlight! link CmpItemKindKeyword GruvboxKeyword]]
	vim.cmd [[highlight! link CmpItemKindSnippet GruvboxRed]]
	vim.cmd [[highlight! link CmpItemKindFile GruvboxOrange]]
	vim.cmd [[highlight! link CmpItemKindFolder GruvboxOrange]]
	local hl = vim.api.nvim_set_hl
	-- change text to green
	hl(0, 'CmpItemAbbrMatchFuzzy', { link = 'GruvboxAqua' })
	hl(0, 'CmpItemAbbrMatchFuzzyDefault', { link = 'GruvboxAqua' })
	hl(0, 'CmpItemAbbrMatch', { link = 'GruvboxAqua' })
	hl(0, 'CmpItemAbbrMatchDefault', { link = 'GruvboxAqua' })
	hl(0, 'CmpItemAbbrMatch', { link = 'GruvboxAqua' })
end
