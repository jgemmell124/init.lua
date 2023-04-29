local lsp = require('lsp-zero')

--require'lspconfig'.pyright.setup{}

lsp.preset("recommended")
require'lspconfig'.pyright.setup{}
lsp.ensure_installed({
	'tsserver',
	--	'eslint',
	--	'sumneko_lua',
	'rust_analyzer',
	'pyright',
})

-- require'lspconfig'.pyright.setup{}

lsp.on_attach(function(client, bufnr)
	lsp.default_keymaps({buffer = bufnr})
end)


-- (Optional) Configure lua language server for neovim
-- require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()
