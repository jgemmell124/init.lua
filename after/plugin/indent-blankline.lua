
vim.opt.list = false

require("ibl").setup {
	scope = {
		enabled = true;
		show_start = false;
		show_end = false;
		--[[ highlight = { "Function", "Label" }, ]]
		show_exact_scope = false;
		include = {
			--[[ node_type = { lua = { "return_statement", "table_constructor" } }, ]]
			node_type = { ["*"] = { "*" } },
		};
	};


	indent = {
		char = '▏', -- right
		--[[ char = '▕' -- left ]]
        --[[ char = '│', -- center ]]
		smart_indent_cap = true
	};
	whitespace = { highlight = { "Whitespace", "NonText" } },
}


local function one ()
	local me = 1;
	while true do
		print('hello');
	end
end
