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
    --[[ manage_nvim_cmp = {
        set_sources = 'recommended',
        set_basic_mappings = true,
        set_extra_mappings = false,
        use_luasnip = true,
        set_format = true,
        documentation_window = true,
    }, ]]
})


lsp.ensure_installed({
    'tsserver',
    'eslint',
    'rust_analyzer',
    'lua_ls',
    'pyright',
    'clangd',
})

require'lspconfig'.lua_ls.setup {
    -- ... other configs
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
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
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

lsp.setup()
vim.diagnostic.config({
    virtual_text = true
})

--- CMP SETUP --- 
-- custom ghost highlight group
vim.api.nvim_set_hl(0, 'Ghost', { italic=true, fg='#676767' }) --- cmp icon settings --- 

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
        ['<S-Tab>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<Tab>'] = cmp.mapping.select_next_item(cmp_select),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ["<C-Space>"] = cmp.mapping.complete(),
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
        ghost_text = { hl_group = "Ghost" },
    },
    --[[ sources = {
        { name = 'nvim_lsp_signature_help' },
    }, ]]
    --[[ view = {
        entries = "native"
    } ]]
})
