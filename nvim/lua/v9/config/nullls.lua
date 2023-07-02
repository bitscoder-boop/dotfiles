local null_ls = require("null-ls")
local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local diagnostics = null_ls.builtins.diagnostics
local completion = null_ls.builtins.completion

null_ls.setup({
	debug = flase,
	sources = {
		formatting.black,
		formatting.stylua,
        diagnostics.trail_space,
        diagnostics.ruff,
        completion.luasnip
		-- diagnostics.flake8
	},
})
