local cmp = require("cmp")
local lspkind = require("lspkind")

cmp.setup({
	mapping = {
		["<C-d>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.abort(),
		["<CR>"] = cmp.mapping.confirm({ select = true }),
		["<C-k>"] = cmp.mapping.select_prev_item(),
		["<C-j>"] = cmp.mapping.select_next_item(),
	},
	sources = {
		{ name = "gh_issues" },
		{ name = "nvim_lua" },
		{ name = "nvim_lsp" },
		{ name = "path" },
		{ name = "luasnip" },
		{ name = "buffer" },
	},
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end,
	},

	formatting = {
		format = lspkind.cmp_format({
			with_text = true,
			menu = {
				buffer = "[buf]",
				nvim_lsp = "[LSP]",
				nvim_lua = "[api]",
				path = "[path]",
				luasnip = "[snip]",
				gn_issues = "[issues]",
			},
		}),
	},

	experimental = {
		native_menu = false,
		-- ghost_text = true,
	},
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    }
})
require("luasnip.loaders.from_vscode").lazy_load()

local config = {
    -- disable virtual text
    virtual_text = true,
    -- show signs
    update_in_insert = true,
    underline = true,
    severity_sort = true,
    float = {
	    focusable = false,
    	    style = "minimal",
	    border = "rounded",
	    source = "always",
	    header = "",
	    prefix = "",
    },
}
vim.diagnostic.config(config)
