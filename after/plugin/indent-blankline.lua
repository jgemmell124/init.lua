
vim.opt.list = false

require("ibl").setup {
	enabled = true,
	scope = {
		enabled = false;
		show_start = false;
		show_end = false;
		--[[ highlight = { "Function", "Label" }, ]]
		show_exact_scope = true;
		include = {
			--[[ node_type = { lua = { "return_statement", "table_constructor" } }, ]]
			node_type = { ["*"] = { "*" } },
		};
	};


	indent = {
		char = '▏', -- right
		--[[ char = '▕' -- left ]]
        --[[ char = '│', -- center ]]
		smart_indent_cap = false
	};
	whitespace = { highlight = { "Whitespace", "NonText" } },
}
