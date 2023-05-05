--- cmp icon settings --- 
local kind_icons = {
    Text = "󰀬",
    Method = "m",
    Function = "󰊕",
    Constructor = "",
    Field = "",
    Variable = "",
    Class = "",
    Interface = "",
    Module = "",
    Property = "",
    Unit = "",
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
        fields = { "abbr", "menu", "kind"},
        format = function(entry, vim_item)
            local lspkind_ok, lspkind  = pcall(require, "lspkind")
            if not lspkind_ok then
                vim_item.kind = string.format('%s %s ',
                                                kind_icons[vim_item.kind],
                                                vim_item.kind)
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
        ghost_text = true,
    },
    --[[ view = {
        entries = "native"
    } ]]
})
