require('config.setup')
require('config.remaps')
require('config.lazy_init')

-- TODO add in some stuff here
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = {"*"},
    callback = function ()
        -- remove trailing spaces
        local save_cursor = vim.fn.getpos(".")
        vim.cmd("silent! keeppatterns %s/\\s\\+$//e")
        vim.fn.setpos(".", save_cursor)
    end
})

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local bufnr = args.buf ---@type number
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client.supports_method("textDocument/inlayHint") then
      vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
      vim.keymap.set("n", "<leader>i", function()
        vim.lsp.inlay_hint.enable(
          not vim.lsp.inlay_hint.is_enabled({ bufnr = bufnr }),
          { bufnr = bufnr }
        )
      end, { buffer = bufnr })
    end
  end,
})

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(args)
		local bufnr = args.buf
		--[[ local client = vim.lsp.get_client_by_id(args.data.client_id) ]]
		local opts = {buffer = bufnr}
		vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
		vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
		vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
		vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
		vim.keymap.set("n", "]d", function() vim.diagnostic.goto_next() end, opts)
		vim.keymap.set("n", "[d", function() vim.diagnostic.goto_prev() end, opts)
		vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
		vim.keymap.set("n", "<leader>rr", function() vim.lsp.buf.references() end, opts)
		vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
		vim.keymap.set("n", "<leader>vs", function() vim.lsp.buf.document_symbol() end, opts)
		vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
	end,
})
